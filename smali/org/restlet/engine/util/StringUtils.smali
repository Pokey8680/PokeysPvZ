.class public Lorg/restlet/engine/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;,
        Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    }
.end annotation


# static fields
.field private static html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

.field private static htmlLat1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/util/StringUtils$CharacterEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static htmlSpecial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/util/StringUtils$CharacterEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static htmlSymbol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/util/StringUtils$CharacterEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static xml10:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/util/StringUtils$CharacterEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x3e

    const/16 v9, 0x3c

    const/16 v8, 0x26

    const/16 v7, 0x22

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    .line 171
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "quot"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "amp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "gt"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lt"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    .line 176
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "nbsp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "iexcl"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cent"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pound"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "curren"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "yen"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "brvbar"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sect"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "uml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xa9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "copy"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xaa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ordf"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xab

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "laquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xac

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "not"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xad

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "shy"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xae

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "reg"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xaf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "macr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "deg"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "plusmn"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sup2"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sup3"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "acute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "micro"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "para"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "middot"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cedil"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xb9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sup1"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xba

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ordm"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xbb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "raquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xbc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "frac14"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xbd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "frac12"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xbe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "frac34"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xbf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "iquest"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Agrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Aacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Acirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Atilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Auml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Aring"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "AElig"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ccedil"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Egrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xc9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Eacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ecirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xcb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Euml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xcc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Igrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xcd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Iacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xce

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Icirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xcf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Iuml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ETH"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ntilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ograve"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Oacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ocirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Otilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ouml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "times"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Oslash"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xd9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ugrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xda

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Uacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xdb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Ucirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xdc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Uuml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Yacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xde

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "THORN"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xdf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "szlig"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "agrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "aacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "acirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "atilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "auml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "aring"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "aelig"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ccedil"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "egrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xe9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "eacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xea

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ecirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xeb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "euml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xec

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "igrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xed

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "iacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xee

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "icirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xef

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "iuml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "eth"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ntilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ograve"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "oacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ocirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "otilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ouml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "divide"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "oslash"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xf9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ugrave"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xfa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "uacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xfb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ucirc"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xfc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "uuml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xfd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "yacute"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xfe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "thorn"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "yuml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    .line 273
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x192

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fnof"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x391

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Alpha"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x392

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Beta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x393

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Gamma"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x394

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Delta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x395

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Epsilon"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x396

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Zeta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x397

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Eta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x398

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Theta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x399

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Iota"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x39a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Kappa"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x39b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Lambda"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x39c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Mu"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x39d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Nu"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x39e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Xi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x39f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Omicron"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Pi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Rho"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Sigma"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Tau"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Upsilon"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Phi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Chi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Psi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3a9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Omega"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "alpha"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "beta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "gamma"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "delta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "epsilon"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "zeta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "eta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "theta"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3b9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "iota"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3ba

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "kappa"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3bb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lambda"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "mu"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3bd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "nu"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3be

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "xi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3bf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "omicron"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rho"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sigmaf"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sigma"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "tau"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "upsilon"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "phi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "chi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "psi"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3c9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "omega"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3d1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "thetasym"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "upsih"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x3d6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "piv"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2026

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "hellip"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2032

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "prime"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2033

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Prime"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x203e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "oline"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2044

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "frasl"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2111

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "image"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2118

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "weierp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x211c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "real"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2122

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "trade"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2135

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "alefsym"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2190

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "larr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2191

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "uarr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2192

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rarr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2193

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "darr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2194

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "harr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x21b5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "crarr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x21d0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lArr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x21d1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "uArr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x21d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rArr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x21d3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "dArr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x21d4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "hArr"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2200

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "forall"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2202

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "part"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2203

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exist"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2205

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "empty"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2207

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "nabla"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2208

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "isin"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2209

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "notin"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x220b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ni"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x220f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "prod"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2211

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sum"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2212

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "minus"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2217

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lowast"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x221a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "radic"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x221d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "prop"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x221e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "infin"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2220

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ang"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2227

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "and"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2228

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "or"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2229

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cap"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x222a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cup"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x222b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "int"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2234

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "there4"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x223c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sim"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2245

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cong"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2248

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "asymp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2260

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ne"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2261

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "equiv"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2264

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "le"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2265

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ge"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2282

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sub"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2283

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sup"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2284

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "nsub"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2286

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sube"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2287

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "supe"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2295

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "oplus"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2297

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "otimes"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x22a5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "perp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x22c5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sdot"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2308

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lceil"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2309

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rceil"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x230a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lfloor"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x230b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rfloor"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2329

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lang"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x232a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rang"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x25ca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "loz"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2660

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "spades"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2663

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "clubs"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2665

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "hearts"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2666

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "diams"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    .line 397
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "quot"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "amp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x27

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "apos"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lt"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "gt"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x152

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "OElig"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x153

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "oelig"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x160

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Scaron"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x161

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "scaron"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x178

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Yuml"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2c6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "circ"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2dc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "tilde"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ensp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2003

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "emsp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2009

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "thinsp"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x200c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "zwnj"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x200d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "zwj"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x200e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lrm"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x200f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rlm"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2013

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ndash"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2014

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "mdash"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2018

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lsquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2019

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rsquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x201a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sbquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x201c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ldquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x201d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rdquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x201e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "bdquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2020

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "dagger"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2021

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Dagger"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2022

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "bull"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2030

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "permil"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x2039

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lsaquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x203a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rsaquo"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    new-instance v4, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    const/16 v5, 0x20ac

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "euro"

    invoke-direct {v4, v5, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/util/StringUtils$CharacterEntity;>;"
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 434
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 435
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    new-instance v3, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    invoke-direct {v3}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;-><init>()V

    sput-object v3, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    .line 437
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->xml10:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    .line 438
    .local v0, "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getNumericValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    :cond_0
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlLat1:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    .line 441
    .restart local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getNumericValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    .end local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    :cond_1
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSymbol:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    .line 444
    .restart local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getNumericValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2

    .line 446
    .end local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    :cond_2
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->htmlSpecial:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/util/StringUtils$CharacterEntity;

    .line 447
    .restart local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    sget-object v3, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getNumericValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_3

    .line 449
    .end local v0    # "entity":Lorg/restlet/engine/util/StringUtils$CharacterEntity;
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    return-void
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 461
    if-eqz p0, :cond_0

    .line 463
    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 469
    :cond_0
    :goto_0
    return-object v1

    .line 464
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getLatin1Bytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 482
    if-eqz p0, :cond_0

    .line 484
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 490
    :cond_0
    :goto_0
    return-object v1

    .line 485
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3b

    .line 503
    if-nez p0, :cond_0

    .line 504
    const/4 v5, 0x0

    .line 523
    :goto_0
    return-object v5

    .line 506
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 507
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 508
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 509
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    .local v0, "c":C
    sget-object v5, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    invoke-virtual {v5, v0}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "entityName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 512
    const/16 v5, 0x7f

    if-le v0, v5, :cond_1

    .line 514
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 517
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 520
    :cond_2
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 523
    .end local v0    # "c":C
    .end local v1    # "entityName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static htmlUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 536
    if-nez p0, :cond_0

    .line 537
    const/16 v17, 0x0

    .line 615
    :goto_0
    return-object v17

    .line 539
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 540
    .local v11, "len":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 541
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_d

    .line 542
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 543
    .local v3, "c":C
    const/16 v17, 0x26

    move/from16 v0, v17

    if-ne v3, v0, :cond_c

    .line 544
    add-int/lit8 v12, v9, 0x1

    .line 545
    .local v12, "nextIndex":I
    const/4 v14, -0x1

    .line 546
    .local v14, "semicolonIndex":I
    const/4 v2, -0x1

    .line 547
    .local v2, "ampersandIndex":I
    const/4 v15, 0x0

    .line 548
    .local v15, "stop":Z
    move v10, v12

    .local v10, "j":I
    :goto_2
    if-nez v15, :cond_3

    if-ge v10, v11, :cond_3

    .line 549
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 550
    .local v4, "ch":C
    const/16 v17, 0x3b

    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    .line 551
    move v14, v10

    .line 552
    const/4 v15, 0x1

    .line 548
    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 553
    :cond_2
    const/16 v17, 0x26

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 554
    move v2, v10

    .line 555
    const/4 v15, 0x1

    goto :goto_3

    .line 558
    .end local v4    # "ch":C
    :cond_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_a

    .line 560
    if-eq v12, v14, :cond_9

    .line 561
    const/4 v7, -0x1

    .line 562
    .local v7, "entityValue":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, "entityName":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x23

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 566
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 567
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 569
    .local v8, "hexChar":C
    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    .line 570
    const/16 v17, 0x2

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 579
    :goto_4
    invoke-static {v7}, Ljava/lang/Character;->isValidCodePoint(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_4

    .line 581
    const/4 v7, -0x1

    .line 593
    .end local v8    # "hexChar":C
    :cond_4
    :goto_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_8

    .line 594
    const/16 v17, 0x26

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x3b

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    .end local v6    # "entityName":Ljava/lang/String;
    .end local v7    # "entityValue":I
    :goto_6
    move v9, v14

    .line 541
    .end local v2    # "ampersandIndex":I
    .end local v10    # "j":I
    .end local v12    # "nextIndex":I
    .end local v14    # "semicolonIndex":I
    .end local v15    # "stop":Z
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 572
    .restart local v2    # "ampersandIndex":I
    .restart local v6    # "entityName":Ljava/lang/String;
    .restart local v7    # "entityValue":I
    .restart local v8    # "hexChar":C
    .restart local v10    # "j":I
    .restart local v12    # "nextIndex":I
    .restart local v14    # "semicolonIndex":I
    .restart local v15    # "stop":Z
    :cond_5
    const/16 v17, 0x78

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 573
    const/16 v17, 0x2

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_4

    .line 576
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto :goto_4

    .line 583
    :catch_0
    move-exception v5

    .line 584
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    goto :goto_5

    .line 588
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "hexChar":C
    :cond_7
    sget-object v17, Lorg/restlet/engine/util/StringUtils;->html40Entities:Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/restlet/engine/util/StringUtils$CharacterEntitySolver;->getValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 589
    .local v16, "val":Ljava/lang/Integer;
    if-eqz v16, :cond_4

    .line 590
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_5

    .line 596
    .end local v16    # "val":Ljava/lang/Integer;
    :cond_8
    int-to-char v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 599
    .end local v6    # "entityName":Ljava/lang/String;
    .end local v7    # "entityValue":I
    :cond_9
    const-string v17, "&;"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 602
    :cond_a
    if-eqz v15, :cond_b

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x26

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    move v9, v2

    goto :goto_7

    .line 608
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 609
    move v9, v11

    goto :goto_7

    .line 612
    .end local v2    # "ampersandIndex":I
    .end local v10    # "j":I
    .end local v12    # "nextIndex":I
    .end local v14    # "semicolonIndex":I
    .end local v15    # "stop":Z
    :cond_c
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 615
    .end local v3    # "c":C
    :cond_d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0
.end method

.method public static strip(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    const/4 v0, 0x1

    .line 628
    invoke-static {p0, p1, v0, v0}, Lorg/restlet/engine/util/StringUtils;->strip(Ljava/lang/String;CZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;CZZ)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "start"    # Z
    .param p3, "end"    # Z

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 648
    .local v1, "endIndex":I
    const/4 v2, 0x1

    .line 651
    .local v2, "stripping":Z
    :goto_0
    if-eqz v2, :cond_1

    if-ge v0, v1, :cond_1

    .line 652
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 660
    :cond_1
    const/4 v2, 0x1

    .line 661
    :goto_1
    if-eqz v2, :cond_3

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_3

    .line 662
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    .line 663
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 665
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 669
    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
