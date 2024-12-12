.class Lorg/restlet/engine/component/ServerRouter$1;
.super Lorg/restlet/Restlet;
.source "ServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/component/ServerRouter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/component/ServerRouter;


# direct methods
.method constructor <init>(Lorg/restlet/engine/component/ServerRouter;Lorg/restlet/Context;)V
    .locals 0
    .param p2, "x0"    # Lorg/restlet/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/restlet/engine/component/ServerRouter$1;->this$0:Lorg/restlet/engine/component/ServerRouter;

    invoke-direct {p0, p2}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 123
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    const-string v1, "No virtual host could handle the request"

    invoke-virtual {p2, v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 125
    return-void
.end method
