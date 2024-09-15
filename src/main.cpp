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
    b.add_Continent("Europa", "Population: 700mln\n Size: 10.3mln km^2");
    //b.add_Continent("Europa", "Dupa\n");
    b.print_Continents();

    ws.register_resource("/booker", &bh, true);

    std::cout << "Server running on port: 8080\n";
    ws.start(true);
    //
}

// curl -X GET http://localhost:8080/booker

// curl -X POST http://localhost:8080/booker -H "Content-Type: application/json" -d '{"action": "add_Continent", "name": "Asia", "content": "dupa1"}'
