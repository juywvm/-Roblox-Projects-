local request = http_request or request or HttpPost or syn.request
                            request({
                                Url = "http://127.0.0.1:6463/rpc?v=1",
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json",
                                    ["Origin"] = "https://discord.com"
                                },
                                Body = game:GetService("HttpService"):JSONEncode({
                                    cmd = "INVITE_BROWSER",
                                    args = {
                                        code = "Y2FyymgHDD"
                                    },
                                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                                }),
                             })

