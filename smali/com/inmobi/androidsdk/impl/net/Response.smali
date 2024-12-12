.class public Lcom/inmobi/androidsdk/impl/net/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->a:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/Response;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/Response;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getAdResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->a:Ljava/lang/String;

    return-object v0
.end method
