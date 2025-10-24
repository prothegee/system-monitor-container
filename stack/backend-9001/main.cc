#include <drogon/drogon.h>

#define CONFIG_FILE "../config.json"

int main() {
    std::cout << "initializing backend-9001\n";

    drogon::app().loadConfigFile(CONFIG_FILE);

    // 404
    {
        Json::Value json = 404;

        drogon::HttpResponsePtr p_resp = drogon::HttpResponse::newHttpJsonResponse(json);

        p_resp->setStatusCode(drogon::k404NotFound);
        p_resp->setExpiredTime(0);

        drogon::app().setCustom404Page(p_resp);
    }

    // endpoints
    drogon::app().registerHandler("/v1/check/status",
            [](const drogon::HttpRequestPtr& p_req,
               std::function<void(const drogon::HttpResponsePtr&)> &&callback) {
                Json::Value data;
                drogon::HttpResponsePtr p_resp = drogon::HttpResponse::newHttpResponse();

                // maybe:
                // - you can make another request internally
                // - count something as in variable:
                //  - if certain tresshold reach, make another status >= 500

                try {
                    data["ok"] = true;

                    p_resp = drogon::HttpResponse::newHttpJsonResponse(data);

                    p_resp->setStatusCode(drogon::k200OK);
                } catch (const std::exception& e) {
                    std::cerr << "exception: " << e.what() << "\n";
                    data["ok"] = false;

                    p_resp = drogon::HttpResponse::newHttpJsonResponse(data);

                    p_resp->setStatusCode(drogon::k500InternalServerError);
                }

                callback(p_resp);
            },
            { drogon::Get });

    drogon::app().run();

    return 0;
}

