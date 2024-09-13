#include "BookerHandler.h"


BookerHandler::BookerHandler(Booker* booker)
{
    b = booker;
}

std::shared_ptr<http_response> BookerHandler::render_GET(const http_request &req)
{
    json response_json;

    std::string path = std::string(req.get_path());

    std::string sub_path = parse_Path(path)["sub_path"];

    response_json["message"] = "This is a GET response";
    response_json["status"] = "success";

    json jr = parse_Path(path);

    std::string continent = jr["continent"].get<std::string>();
    std::string country = jr["country"].get<std::string>();
    std::string city = jr["city"].get<std::string>();

    std::string response = "";
    response += "Continent = [" + continent + "]\n" +
            "Country = [" + country + "]\n" +
            "City = [" + city + "]\n";

    return std::make_shared<string_response>(response);
    //return std::make_shared<string_response>(response_json.dump(), 200, "application/json");
}

std::shared_ptr<http_response> BookerHandler::render_POST(const http_request& req)
{
    try{
    auto jr = json::parse(req.get_content());

    std::cout << "Recieved POST data: " << jr.dump() << std::endl;


    if(jr["action"] == "add_Continent")
    {
        for(const auto& c : b->continents)
        {
            if (jr["continent"] != c->continent_name)
                b->add_Continent(jr["name"]);
            else
                std::cout << "There is already a continent with that name!\n";
        }
    }


    else if(jr["action"] == "add_Country")
    {
        for(const auto& c : b->continents)
        {
            if (jr["continent"] != c->continent_name)
                {
                    
                }
            else
                std::cout << "There is already a continent with that name!\n";
        }
    }
    else if(jr["action"] == "add_City")
    {

    }
    else
    {
        std::cout << "Wrong action: " << jr["action"] << std::endl;
    }
    } catch (const std::exception& e)
    {
        // Handle error (bad JSON or other issues)
        return std::make_shared<string_response>("Invalid JSON", 400, "text/plain");
    }
}

json BookerHandler::parse_Path(const std::string &path)
{
    json data;

    std::string local_path = path;

    size_t boker_size = sizeof("/booker/");
    size_t slash_pos = local_path.find("/booker/");
    std::string sub_path = local_path.substr(slash_pos + boker_size - 1);

    std::stringstream ss(sub_path);
    std::string part;

    getline(ss, part, '/');
    data["continent"] = part;

    if (std::getline(ss, part, '/')) {
    data["country"] = part;
    } else {
        data["country"] = "";
    }

    if (std::getline(ss, part, '/')) {
        data["city"] = part;
    } else {
        data["city"] = "";
    }



    //std::string test1 = path.substr(sizeof(boker));
    //size_t slash_pos = path.find("/");
    data["sub_path"] = sub_path;

    return data;
}
