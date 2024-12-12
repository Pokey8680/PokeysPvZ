.class public abstract Lorg/codegist/common/log/AbstractLogger;
.super Lorg/codegist/common/log/Logger;
.source "AbstractLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/codegist/common/log/Logger;-><init>()V

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 33
    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "format":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isDebugOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codegist/common/log/AbstractLogger;->logDebug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isDebugOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/common/log/AbstractLogger;->logDebug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isDebugOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isDebugOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/codegist/common/log/AbstractLogger;->logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isDebugOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isErrorOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codegist/common/log/AbstractLogger;->logError(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isErrorOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/common/log/AbstractLogger;->logError(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isErrorOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isErrorOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/codegist/common/log/AbstractLogger;->logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isErrorOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isInfoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codegist/common/log/AbstractLogger;->logInfo(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isInfoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/common/log/AbstractLogger;->logInfo(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isInfoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isInfoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/codegist/common/log/AbstractLogger;->logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isInfoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract logDebug(Ljava/lang/Object;)V
.end method

.method protected abstract logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method protected abstract logError(Ljava/lang/Object;)V
.end method

.method protected abstract logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method protected abstract logInfo(Ljava/lang/Object;)V
.end method

.method protected abstract logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method protected abstract logTrace(Ljava/lang/Object;)V
.end method

.method protected abstract logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method protected abstract logWarn(Ljava/lang/Object;)V
.end method

.method protected abstract logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isTraceOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codegist/common/log/AbstractLogger;->logTrace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 238
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isTraceOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/common/log/AbstractLogger;->logTrace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public trace(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isTraceOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 230
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isTraceOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/codegist/common/log/AbstractLogger;->logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isTraceOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isWarnOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codegist/common/log/AbstractLogger;->logWarn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isWarnOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/common/log/AbstractLogger;->logWarn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isWarnOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isWarnOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/codegist/common/log/AbstractLogger;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/AbstractLogger;->isWarnOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/codegist/common/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codegist/common/log/AbstractLogger;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method
