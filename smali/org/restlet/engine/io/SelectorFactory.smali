.class public Lorg/restlet/engine/io/SelectorFactory;
.super Ljava/lang/Object;
.source "SelectorFactory.java"


# static fields
.field public static final MAX_ATTEMPTS:I = 0x2

.field public static final MAX_SELECTORS:I = 0x14

.field private static final SELECTORS:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/nio/channels/Selector;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMEOUT:J = 0x1388L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 64
    :try_start_0
    sget-object v1, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSelector()Ljava/nio/channels/Selector;
    .locals 10

    .prologue
    .line 77
    sget-object v6, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    monitor-enter v6

    .line 78
    const/4 v4, 0x0

    .line 81
    .local v4, "selector":Ljava/nio/channels/Selector;
    :try_start_0
    sget-object v5, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    sget-object v5, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/nio/channels/Selector;

    move-object v4, v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 89
    .local v2, "attempts":I
    :goto_1
    if-nez v4, :cond_2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    .line 90
    :try_start_1
    sget-object v5, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    sget-object v5, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    sget-object v5, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/nio/channels/Selector;

    move-object v4, v0
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v3

    .line 105
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v6

    return-object v4

    .line 106
    .end local v2    # "attempts":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 102
    .restart local v2    # "attempts":I
    :catch_1
    move-exception v5

    goto :goto_2

    .line 84
    .end local v2    # "attempts":I
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public static final returnSelector(Ljava/nio/channels/Selector;)V
    .locals 3
    .param p0, "selector"    # Ljava/nio/channels/Selector;

    .prologue
    .line 116
    sget-object v1, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 119
    sget-object v0, Lorg/restlet/engine/io/SelectorFactory;->SELECTORS:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 121
    :cond_0
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
