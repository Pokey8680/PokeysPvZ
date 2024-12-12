.class Lorg/restlet/routing/VirtualHost$1;
.super Lorg/restlet/routing/TemplateRoute;
.source "VirtualHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/routing/VirtualHost;->createRoute(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/routing/VirtualHost;


# direct methods
.method constructor <init>(Lorg/restlet/routing/VirtualHost;Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V
    .locals 0
    .param p2, "x0"    # Lorg/restlet/routing/Router;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/restlet/Restlet;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost$1;->this$0:Lorg/restlet/routing/VirtualHost;

    invoke-direct {p0, p2, p3, p4}, Lorg/restlet/routing/TemplateRoute;-><init>(Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V

    return-void
.end method


# virtual methods
.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lorg/restlet/routing/TemplateRoute;->beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    .line 348
    .local v0, "result":I
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/Request;->setRootRef(Lorg/restlet/data/Reference;)V

    .line 351
    iget-object v1, p0, Lorg/restlet/routing/VirtualHost$1;->this$0:Lorg/restlet/routing/VirtualHost;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/routing/VirtualHost;->setCurrent(Ljava/lang/Integer;)V

    .line 353
    return v0
.end method
