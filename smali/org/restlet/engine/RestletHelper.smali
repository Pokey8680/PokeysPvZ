.class public abstract Lorg/restlet/engine/RestletHelper;
.super Lorg/restlet/engine/Helper;
.source "RestletHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Restlet;",
        ">",
        "Lorg/restlet/engine/Helper;"
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile helped:Lorg/restlet/Restlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/Restlet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    .local p1, "helped":Lorg/restlet/Restlet;, "TT;"
    invoke-direct {p0}, Lorg/restlet/engine/Helper;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/RestletHelper;->attributes:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lorg/restlet/engine/RestletHelper;->helped:Lorg/restlet/Restlet;

    .line 76
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/RestletHelper;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHelped()Lorg/restlet/Restlet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/RestletHelper;->helped:Lorg/restlet/Restlet;

    return-object v0
.end method

.method public getHelpedParameters()Lorg/restlet/util/Series;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lorg/restlet/util/Series;

    .end local v0    # "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const-class v1, Lorg/restlet/data/Parameter;

    invoke-direct {v0, v1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .restart local v0    # "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    goto :goto_0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public getMetadataService()Lorg/restlet/service/MetadataService;
    .locals 3

    .prologue
    .line 142
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "result":Lorg/restlet/service/MetadataService;
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Restlet;->getApplication()Lorg/restlet/Application;

    move-result-object v0

    .line 147
    .local v0, "application":Lorg/restlet/Application;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lorg/restlet/Application;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v1

    .line 152
    .end local v0    # "application":Lorg/restlet/Application;
    :cond_0
    if-nez v1, :cond_1

    .line 153
    new-instance v1, Lorg/restlet/service/MetadataService;

    .end local v1    # "result":Lorg/restlet/service/MetadataService;
    invoke-direct {v1}, Lorg/restlet/service/MetadataService;-><init>()V

    .line 156
    .restart local v1    # "result":Lorg/restlet/service/MetadataService;
    :cond_1
    return-object v1
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 169
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    invoke-static {p2}, Lorg/restlet/Response;->setCurrent(Lorg/restlet/Response;)V

    .line 172
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/restlet/engine/RestletHelper;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/Context;->setCurrent(Lorg/restlet/Context;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setHelped(Lorg/restlet/Restlet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lorg/restlet/engine/RestletHelper;, "Lorg/restlet/engine/RestletHelper<TT;>;"
    .local p1, "helpedRestlet":Lorg/restlet/Restlet;, "TT;"
    iput-object p1, p0, Lorg/restlet/engine/RestletHelper;->helped:Lorg/restlet/Restlet;

    .line 185
    return-void
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract update()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
