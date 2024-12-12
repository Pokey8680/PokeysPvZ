.class public Ljavax/ws/rs/core/EntityTag;
.super Ljava/lang/Object;
.source "EntityTag.java"


# static fields
.field private static final delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate",
            "<",
            "Ljavax/ws/rs/core/EntityTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;

.field private weak:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v0

    const-class v1, Ljavax/ws/rs/core/EntityTag;

    invoke-virtual {v0, v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createHeaderDelegate(Ljava/lang/Class;)Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/core/EntityTag;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/ws/rs/core/EntityTag;-><init>(Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "weak"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Ljavax/ws/rs/core/EntityTag;->value:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Ljavax/ws/rs/core/EntityTag;->weak:Z

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/EntityTag;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Ljavax/ws/rs/core/EntityTag;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/EntityTag;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    instance-of v2, p1, Ljavax/ws/rs/core/EntityTag;

    if-nez v2, :cond_2

    .line 98
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 99
    check-cast v0, Ljavax/ws/rs/core/EntityTag;

    .line 100
    .local v0, "other":Ljavax/ws/rs/core/EntityTag;
    iget-object v2, p0, Ljavax/ws/rs/core/EntityTag;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/ws/rs/core/EntityTag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ljavax/ws/rs/core/EntityTag;->weak:Z

    invoke-virtual {v0}, Ljavax/ws/rs/core/EntityTag;->isWeak()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 101
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljavax/ws/rs/core/EntityTag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x3

    .line 112
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/ws/rs/core/EntityTag;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/ws/rs/core/EntityTag;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit8 v0, v1, 0x33

    .line 113
    mul-int/lit8 v1, v0, 0x11

    iget-boolean v3, p0, Ljavax/ws/rs/core/EntityTag;->weak:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 114
    return v0

    :cond_1
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method public isWeak()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Ljavax/ws/rs/core/EntityTag;->weak:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Ljavax/ws/rs/core/EntityTag;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
