.class public Lorg/restlet/engine/log/AccessLogFileHandler;
.super Ljava/util/logging/FileHandler;
.source "AccessLogFileHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/logging/FileHandler;-><init>()V

    .line 54
    invoke-virtual {p0}, Lorg/restlet/engine/log/AccessLogFileHandler;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/restlet/engine/log/AccessLogFileHandler;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;II)V

    .line 102
    invoke-virtual {p0}, Lorg/restlet/engine/log/AccessLogFileHandler;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 122
    invoke-virtual {p0}, Lorg/restlet/engine/log/AccessLogFileHandler;->init()V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {p0}, Lorg/restlet/engine/log/AccessLogFileHandler;->init()V

    .line 85
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lorg/restlet/engine/log/AccessLogFormatter;

    invoke-direct {v0}, Lorg/restlet/engine/log/AccessLogFormatter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/restlet/engine/log/AccessLogFileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 130
    return-void
.end method
