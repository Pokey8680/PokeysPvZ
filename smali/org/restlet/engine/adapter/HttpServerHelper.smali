.class public Lorg/restlet/engine/adapter/HttpServerHelper;
.super Lorg/restlet/engine/ServerHelper;
.source "HttpServerHelper.java"


# instance fields
.field private volatile adapter:Lorg/restlet/engine/adapter/ServerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/engine/adapter/HttpServerHelper;-><init>(Lorg/restlet/Server;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Server;)V
    .locals 1
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/restlet/engine/ServerHelper;-><init>(Lorg/restlet/Server;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/adapter/HttpServerHelper;->adapter:Lorg/restlet/engine/adapter/ServerAdapter;

    .line 98
    return-void
.end method


# virtual methods
.method public getAdapter()Lorg/restlet/engine/adapter/ServerAdapter;
    .locals 6

    .prologue
    .line 106
    iget-object v2, p0, Lorg/restlet/engine/adapter/HttpServerHelper;->adapter:Lorg/restlet/engine/adapter/ServerAdapter;

    if-nez v2, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "adapter"

    const-string v4, "org.restlet.engine.adapter.ServerAdapter"

    invoke-virtual {v2, v3, v4}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "adapterClass":Ljava/lang/String;
    invoke-static {v0}, Lorg/restlet/engine/Engine;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/restlet/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getContext()Lorg/restlet/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/engine/adapter/ServerAdapter;

    iput-object v2, p0, Lorg/restlet/engine/adapter/HttpServerHelper;->adapter:Lorg/restlet/engine/adapter/ServerAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 138
    .end local v0    # "adapterClass":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/restlet/engine/adapter/HttpServerHelper;->adapter:Lorg/restlet/engine/adapter/ServerAdapter;

    return-object v2

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to create the HTTP server adapter"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handle(Lorg/restlet/engine/adapter/ServerCall;)V
    .locals 7
    .param p1, "httpCall"    # Lorg/restlet/engine/adapter/ServerCall;

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getAdapter()Lorg/restlet/engine/adapter/ServerAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/restlet/engine/adapter/ServerAdapter;->toRequest(Lorg/restlet/engine/adapter/ServerCall;)Lorg/restlet/engine/adapter/HttpRequest;

    move-result-object v1

    .line 151
    .local v1, "request":Lorg/restlet/engine/adapter/HttpRequest;
    new-instance v2, Lorg/restlet/engine/adapter/HttpResponse;

    invoke-direct {v2, p1, v1}, Lorg/restlet/engine/adapter/HttpResponse;-><init>(Lorg/restlet/engine/adapter/ServerCall;Lorg/restlet/Request;)V

    .line 152
    .local v2, "response":Lorg/restlet/engine/adapter/HttpResponse;
    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/adapter/HttpServerHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 153
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getAdapter()Lorg/restlet/engine/adapter/ServerAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/restlet/engine/adapter/ServerAdapter;->commit(Lorg/restlet/engine/adapter/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    .line 163
    .end local v1    # "request":Lorg/restlet/engine/adapter/HttpRequest;
    .end local v2    # "response":Lorg/restlet/engine/adapter/HttpResponse;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error while handling an HTTP server call: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpServerHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Error while handling an HTTP server call"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    throw v3
.end method

.method public setAdapter(Lorg/restlet/engine/adapter/ServerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lorg/restlet/engine/adapter/ServerAdapter;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/restlet/engine/adapter/HttpServerHelper;->adapter:Lorg/restlet/engine/adapter/ServerAdapter;

    .line 173
    return-void
.end method
