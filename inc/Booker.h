#pragma once

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

#include <httpserver.hpp>

using namespace httpserver;

struct Continent;
struct Country;
struct City;

struct City
{
    City(const std::string& name)
    {
        city_name = name;
    }
    //~City();

    std::string city_name;
    int population;
};

struct Country
{
    Country(const std::string& name)
    {
        country_name = name;
    }
    ~Country()
    {
        for(City* city : cities)
            delete city;
    }

    void add_City(const std::string& name)
    {
        cities.push_back(new City(name));
    }

    std::string country_name;
    std::vector<City*> cities;
};

struct Continent
{
    std::string continent_name;
    std::vector<Country*> countries;

    Continent(const std::string& name)
    {
        continent_name = name;
    }
    ~Continent()
    {
        for(Country* country : countries)
            delete country;
    }

    void add_Country(const std::string& name)
    {
        countries.push_back(new Country(name));
    }
};

class Booker
{
public:
    Booker(webserver* ws);

    void print_Continents();

    void add_Continent(const std::string& name);
    void add_Country(const std::string& continent_name, const std::string& name);
    void add_City(const std::string& continent_name, const std::string& country_name, const std::string& name);

    std::vector<Continent*> continents;
private:
    webserver* ws;
};