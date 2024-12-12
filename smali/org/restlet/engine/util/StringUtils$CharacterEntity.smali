.class Lorg/restlet/engine/util/StringUtils$CharacterEntity;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/engine/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterEntity"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private numericValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "numericValue"    # Ljava/lang/Integer;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->numericValue:Ljava/lang/Integer;

    .line 72
    iput-object p2, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->name:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumericValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->numericValue:Ljava/lang/Integer;

    return-object v0
.end method
