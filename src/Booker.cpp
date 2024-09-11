#include "Booker.h"


Booker::Booker(webserver* ws)
{
    this->ws = ws;
}

void Booker::print_Continents()
{
    for(auto& continent : continents)
    {
        std::cout << continent->continent_name << std::endl;
    }
}

void Booker::add_Continent(const std::string& name)
{
    for(auto& continent : continents)
    {
        if(continent->continent_name == name)
            return;
    }
    continents.push_back(new Continent(name));
    
    std::string endpoint = "/booker/" + name;
    //ws->register_resource(endpoint, bh);
}

void Booker::add_Country(const std::string& continent_name, const std::string& name)
{

}

void Booker::add_City(const std::string& continent_name, const std::string& country_name, const std::string& name)
{

}