#include "BookerHandler.h"


BookerHandler::BookerHandler(Booker* booker)
{
    b = booker;
}

std::shared_ptr<http_response> BookerHandler::render_GET(const http_request &req)
{
    json response_json;

    std::string path = std::string(req.get_path());

    response_json["message"] = "This is a GET response";
    response_json["status"] = "success";

    return std::make_shared<string_response>(path);
    //return std::make_shared<string_response>(response_json.dump(), 200, "application/json");
}

json BookerHandler::parse_Path(const std::string &path)
{
    json data;
    data["Continent"] = "g";
    return data;
}
