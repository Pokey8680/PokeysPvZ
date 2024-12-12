.class public Lorg/restlet/engine/util/EngineClassLoader;
.super Ljava/lang/ClassLoader;
.source "EngineClassLoader.java"


# instance fields
.field private final engine:Lorg/restlet/engine/Engine;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/Engine;)V
    .locals 1
    .param p1, "engine"    # Lorg/restlet/engine/Engine;

    .prologue
    .line 61
    const-class v0, Lorg/restlet/engine/util/EngineClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 62
    iput-object p1, p0, Lorg/restlet/engine/util/EngineClassLoader;->engine:Lorg/restlet/engine/Engine;

    .line 63
    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 70
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/restlet/engine/util/EngineClassLoader;->getEngine()Lorg/restlet/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/Engine;->getUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 72
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 86
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 94
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 96
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 103
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 104
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-direct {v2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :catch_0
    move-exception v2

    goto :goto_0

    .line 87
    :catch_1
    move-exception v2

    goto :goto_1

    .line 97
    :catch_2
    move-exception v2

    goto :goto_2

    .line 107
    :cond_3
    return-object v1
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 115
    .local v1, "result":Ljava/net/URL;
    invoke-virtual {p0}, Lorg/restlet/engine/util/EngineClassLoader;->getEngine()Lorg/restlet/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/Engine;->getUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 117
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 122
    :cond_0
    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 130
    :cond_1
    return-object v1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/util/EngineClassLoader;->getEngine()Lorg/restlet/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/Engine;->getUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 140
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 145
    :cond_0
    if-nez v1, :cond_1

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 153
    :cond_1
    return-object v1
.end method

.method protected getEngine()Lorg/restlet/engine/Engine;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/restlet/engine/util/EngineClassLoader;->engine:Lorg/restlet/engine/Engine;

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 168
    .local v0, "allUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 170
    .local v2, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/URL;>;"
    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 176
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 177
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v5, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    if-eq v4, v5, :cond_1

    .line 184
    throw v1

    .line 189
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    return-object v4
.end method
