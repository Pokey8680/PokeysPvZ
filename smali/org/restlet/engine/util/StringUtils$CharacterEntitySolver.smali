.class Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/engine/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterEntitySolver"
.end annotation


# instance fields
.field private toName:[Ljava/lang/String;

.field private toValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x2710

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->toName:[Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->toValue:Ljava/util/Map;

    .line 114
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->toName:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p2, v0, v1

    .line 127
    iget-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->toValue:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->toName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->toValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
