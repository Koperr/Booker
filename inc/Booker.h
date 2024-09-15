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
    City(const std::string& name, const std::string& content)
    {
        city_name = name;
        this->content = content;
    }
    //~City();

    std::string city_name;
    std::string content;
};

struct Country
{
    Country(const std::string& name, const std::string& content)
    {
        country_name = name;
        this->conent = conent;
    }
    ~Country()
    {
        for(City* city : cities)
            delete city;
    }

    void add_City(const std::string& name, const std::string& content)
    {
        cities.push_back(new City(name, content));
    }

    std::string country_name;
    std::string conent;
    std::vector<City*> cities;
};

struct Continent
{
    std::string continent_name;
    std::vector<Country*> countries;

    std::string content;

    Continent(const std::string& name, const std::string& content)
    {
        continent_name = name;
        this->content = content;
    }
    ~Continent()
    {
        for(Country* country : countries)
            delete country;
    }

    void add_Country(const std::string& name, const std::string& content)
    {
        countries.push_back(new Country(name, content));
    }
};

class Booker
{
public:
    Booker(webserver* ws);

    void print_Continents();

    void add_Continent(const std::string& name, const std::string& content);
    void add_Country(const std::string& continent_name, const std::string& name, const std::string& content);
    void add_City(const std::string& continent_name, const std::string& country_name, const std::string& name, const std::string& content);

    std::vector<Continent*> continents;
    webserver* ws;
private:
};