.class public Lorg/restlet/engine/log/IdentClient;
.super Ljava/lang/Object;
.source "IdentClient.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x64

.field private static final SO_TIMEOUT:I = 0x1f4


# instance fields
.field private volatile hostType:Ljava/lang/String;

.field private volatile userIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 15
    .param p1, "clientAddress"    # Ljava/lang/String;
    .param p2, "clientPort"    # I
    .param p3, "serverPort"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v8, 0x0

    .line 79
    .local v8, "socket":Ljava/net/Socket;
    if-eqz p1, :cond_2

    const/4 v11, -0x1

    move/from16 v0, p2

    if-eq v0, v11, :cond_2

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_2

    .line 80
    const/4 v2, 0x0

    .line 83
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v7, "sb":Ljava/lang/StringBuilder;
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "request":Ljava/lang/String;
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v8    # "socket":Ljava/net/Socket;
    .local v9, "socket":Ljava/net/Socket;
    const/16 v11, 0x1f4

    :try_start_1
    invoke-virtual {v9, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 91
    new-instance v11, Ljava/net/InetSocketAddress;

    const/16 v12, 0x71

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0x64

    invoke-virtual {v9, v11, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 93
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-static {v5}, Lorg/restlet/engine/util/StringUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 97
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget v12, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v3, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "response":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 103
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, ":"

    invoke-direct {v10, v6, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v10, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 108
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 111
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "command":Ljava/lang/String;
    const-string v11, "USERID"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    .line 115
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/restlet/engine/log/IdentClient;->hostType:Ljava/lang/String;

    .line 118
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/restlet/engine/log/IdentClient;->userIdentifier:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    .end local v1    # "command":Ljava/lang/String;
    .end local v10    # "st":Ljava/util/StringTokenizer;
    :cond_0
    if-eqz v3, :cond_1

    .line 129
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v8, v9

    .line 137
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "request":Ljava/lang/String;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    :cond_2
    :goto_0
    return-void

    .line 131
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "request":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v4

    .line 132
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v13, "Unable to close the socket"

    invoke-virtual {v11, v12, v13, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    .line 135
    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 122
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "request":Ljava/lang/String;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 123
    .restart local v4    # "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v13, "Unable to complete the IDENT request"

    invoke-virtual {v11, v12, v13, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    if-eqz v2, :cond_2

    .line 129
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v4

    .line 132
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v13, "Unable to close the socket"

    invoke-virtual {v11, v12, v13, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 128
    :goto_2
    if-eqz v2, :cond_3

    .line 129
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 134
    :cond_3
    :goto_3
    throw v11

    .line 131
    :catch_3
    move-exception v4

    .line 132
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to close the socket"

    invoke-virtual {v12, v13, v14, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 126
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v5    # "request":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_2

    .line 122
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v4

    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_1

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_1
.end method


# virtual methods
.method public getHostType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/restlet/engine/log/IdentClient;->hostType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/restlet/engine/log/IdentClient;->userIdentifier:Ljava/lang/String;

    return-object v0
.end method
