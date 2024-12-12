.class public Ljavax/ws/rs/WebApplicationException;
.super Ljava/lang/RuntimeException;
.source "WebApplicationException.java"


# static fields
.field private static final serialVersionUID:J = 0xb1eb45L


# instance fields
.field private response:Ljavax/ws/rs/core/Response;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sget-object v1, Ljavax/ws/rs/core/Response$Status;->INTERNAL_SERVER_ERROR:Ljavax/ws/rs/core/Response$Status;

    invoke-direct {p0, v0, v1}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response$Status;)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    sget-object v0, Ljavax/ws/rs/core/Response$Status;->INTERNAL_SERVER_ERROR:Ljavax/ws/rs/core/Response$Status;

    invoke-direct {p0, p1, v0}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response$Status;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "status"    # I

    .prologue
    .line 96
    invoke-static {p2}, Ljavax/ws/rs/core/Response;->status(I)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->build()Ljavax/ws/rs/core/Response;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response$Status;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "status"    # Ljavax/ws/rs/core/Response$Status;

    .prologue
    .line 106
    invoke-static {p2}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->build()Ljavax/ws/rs/core/Response;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljavax/ws/rs/core/Response;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    if-nez p2, :cond_0

    .line 85
    invoke-static {}, Ljavax/ws/rs/core/Response;->serverError()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->build()Ljavax/ws/rs/core/Response;

    move-result-object v0

    iput-object v0, p0, Ljavax/ws/rs/WebApplicationException;->response:Ljavax/ws/rs/core/Response;

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-object p2, p0, Ljavax/ws/rs/WebApplicationException;->response:Ljavax/ws/rs/core/Response;

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/ws/rs/core/Response$Status;)V
    .locals 1
    .param p1, "status"    # Ljavax/ws/rs/core/Response$Status;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response$Status;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljavax/ws/rs/core/Response;)V
    .locals 1
    .param p1, "response"    # Ljavax/ws/rs/core/Response;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;Ljavax/ws/rs/core/Response;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getResponse()Ljavax/ws/rs/core/Response;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/ws/rs/WebApplicationException;->response:Ljavax/ws/rs/core/Response;

    return-object v0
.end method
