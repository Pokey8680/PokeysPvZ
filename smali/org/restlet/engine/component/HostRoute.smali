.class public Lorg/restlet/engine/component/HostRoute;
.super Lorg/restlet/routing/Route;
.source "HostRoute.java"


# direct methods
.method public constructor <init>(Lorg/restlet/routing/Router;Lorg/restlet/routing/VirtualHost;)V
    .locals 0
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "target"    # Lorg/restlet/routing/VirtualHost;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/restlet/routing/Route;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/Restlet;)V

    .line 65
    return-void
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "formattedString"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 79
    invoke-virtual {p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Reference;->setBaseRef(Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base URI: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\". Remaining part: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getRemainingPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Reference;->setBaseRef(Lorg/restlet/data/Reference;)V

    goto :goto_0
.end method

.method public getVirtualHost()Lorg/restlet/routing/VirtualHost;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/routing/VirtualHost;

    return-object v0
.end method

.method public score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    .locals 15
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 132
    const/4 v8, 0x0

    .line 135
    .local v8, "result":F
    const-string v1, ""

    .line 136
    .local v1, "hostDomain":Ljava/lang/String;
    const-string v2, ""

    .line 137
    .local v2, "hostPort":Ljava/lang/String;
    const-string v3, ""

    .line 139
    .local v3, "hostScheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 140
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v1

    .line 142
    if-nez v1, :cond_0

    .line 143
    const-string v1, ""

    .line 146
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getHostPort()I

    move-result v0

    .line 148
    .local v0, "basePortValue":I
    const/4 v12, -0x1

    if-ne v0, v12, :cond_1

    .line 149
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v0

    .line 153
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 157
    if-nez v3, :cond_2

    .line 158
    const-string v3, ""

    .line 162
    .end local v0    # "basePortValue":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 163
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "resourceDomain":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 166
    const-string v4, ""

    .line 169
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getHostPort()I

    move-result v6

    .line 171
    .local v6, "resourcePortValue":I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_4

    .line 172
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v6

    .line 176
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "resourcePort":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "resourceScheme":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 180
    const-string v7, ""

    .line 183
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "serverAddress":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 186
    const-string v9, ""

    .line 189
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/ServerInfo;->getPort()I

    move-result v11

    .line 191
    .local v11, "serverPortValue":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 192
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v11

    .line 195
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/ServerInfo;->getPort()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "serverPort":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getHostDomain()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v1}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getHostPort()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v2}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getHostScheme()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v3}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getResourceDomain()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v4}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getResourcePort()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v5}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getResourceScheme()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v7}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getServerAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v9}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/routing/VirtualHost;->getServerPort()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v10}, Lorg/restlet/engine/component/HostRoute;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 210
    const/high16 v8, 0x3f800000    # 1.0f

    .line 215
    .end local v4    # "resourceDomain":Ljava/lang/String;
    .end local v5    # "resourcePort":Ljava/lang/String;
    .end local v6    # "resourcePortValue":I
    .end local v7    # "resourceScheme":Ljava/lang/String;
    .end local v9    # "serverAddress":Ljava/lang/String;
    .end local v10    # "serverPort":Ljava/lang/String;
    .end local v11    # "serverPortValue":I
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 216
    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Call score for the \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/routing/VirtualHost;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" host: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 221
    :cond_9
    return v8
.end method

.method public setNext(Lorg/restlet/routing/VirtualHost;)V
    .locals 0
    .param p1, "next"    # Lorg/restlet/routing/VirtualHost;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lorg/restlet/routing/Route;->setNext(Lorg/restlet/Restlet;)V

    .line 232
    return-void
.end method
