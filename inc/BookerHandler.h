#pragma once

#include <iostream>
#include <sstream>

#include <httpserver.hpp>
#include <nlohmann/json.hpp>

#include "Booker.h"

using namespace httpserver;
using json = nlohmann::json;

class BookerHandler : public http_resource
{
public:
    BookerHandler(Booker* booker);

    std::shared_ptr<http_response> render_GET(const http_request& req) override;
    std::shared_ptr<http_response> render_POST(const http_request& req) override;

    json parse_Path(const std::string& path);
    //std::shared_ptr<http_response> render_PUT(const http_request& req) override
    //{
    //    
    //}
//
    //std::shared_ptr<http_response> render_POST(const http_request& req) override
    //{
//
    //}
//
    //std::shared_ptr<http_response> render_DELETE(const http_request& req) override
    //{
//
    //}



private:
    Booker* b;
};