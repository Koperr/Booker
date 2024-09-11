#include <iostream>
#include <memory>

#include <httpserver.hpp>
#include <nlohmann/json.hpp>

#include "BookerHandler.h"
#include "Booker.h"

using namespace httpserver;
using json = nlohmann::json;



int main()
{
    webserver ws = create_webserver(8080);
    Booker b(&ws);
    BookerHandler bh(&b);
    b.print_Continents();
    b.add_Continent("Europa");
    b.add_Continent("Europa");
    b.print_Continents();

    ws.register_resource("/booker", &bh, true);
    std::cout << "Server running on port: 8080\n";
    ws.start(true);
    //
}

// curl -X GET http://localhost:8080/booker
