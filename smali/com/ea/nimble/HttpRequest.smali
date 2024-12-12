.class public Lcom/ea/nimble/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/ea/nimble/IHttpRequest;


# static fields
.field private static DEFAULT_NETWORK_TIMEOUT:I


# instance fields
.field public data:Ljava/io/ByteArrayOutputStream;

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public method:Lcom/ea/nimble/IHttpRequest$Method;

.field public overwritePolicy:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public runInBackground:Z

.field public targetFilePath:Ljava/lang/String;

.field public timeout:D

.field public url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x1e

    sput v0, Lcom/ea/nimble/HttpRequest;->DEFAULT_NETWORK_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    .line 15
    sget-object v0, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 18
    sget-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->SMART:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    .line 19
    sget v0, Lcom/ea/nimble/HttpRequest;->DEFAULT_NETWORK_TIMEOUT:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/ea/nimble/HttpRequest;->timeout:D

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ea/nimble/HttpRequest;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    .line 26
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/ea/nimble/HttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    return-object v0
.end method

.method public getOverwritePolicy()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRunInBackground()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    return v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/ea/nimble/HttpRequest;->timeout:D

    return-wide v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    return-object v0
.end method
