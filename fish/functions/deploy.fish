function deploy
    ios-deploy --bundle Payload/*.app -W -d
end
