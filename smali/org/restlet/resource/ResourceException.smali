.class public Lorg/restlet/resource/ResourceException;
.super Ljava/lang/RuntimeException;
.source "ResourceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final status:Lorg/restlet/data/Status;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 57
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1}, Lorg/restlet/data/Status;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/restlet/data/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    new-instance v0, Lorg/restlet/data/Status;

    move v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Status;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p5}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Status;-><init>(ILjava/lang/Throwable;)V

    invoke-direct {p0, v0, p2}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    new-instance v0, Lorg/restlet/data/Status;

    sget-object v1, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-direct {v0, v1, p1}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, p1}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Status;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 115
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 117
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/data/Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Status;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p3, p2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    iput-object p1, p0, Lorg/restlet/resource/ResourceException;->status:Lorg/restlet/data/Status;

    .line 156
    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getStatus()Lorg/restlet/data/Status;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/restlet/resource/ResourceException;->status:Lorg/restlet/data/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/restlet/resource/ResourceException;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Status;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
