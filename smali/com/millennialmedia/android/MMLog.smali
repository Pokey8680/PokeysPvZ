.class public Lcom/millennialmedia/android/MMLog;
.super Ljava/lang/Object;
.source "MMLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMLog$LoggingComponent;,
        Lcom/millennialmedia/android/MMLog$LogHandler;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addLoggingComponent(Lcom/millennialmedia/android/MMLog$LoggingComponent;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 221
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method static registerLogHandler(Lcom/millennialmedia/android/MMLog$LogHandler;)V
    .locals 1
    .param p0, "logHandler"    # Lcom/millennialmedia/android/MMLog$LogHandler;

    .prologue
    .line 189
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->registerLogHandler(Lcom/millennialmedia/android/MMLog$LogHandler;)V

    .line 190
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 169
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->setLogLevel(I)V

    .line 170
    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "classTag"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 232
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    return-void
.end method
