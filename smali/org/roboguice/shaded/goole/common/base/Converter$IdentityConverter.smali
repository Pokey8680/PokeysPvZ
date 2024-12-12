.class final Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;
.super Lorg/roboguice/shaded/goole/common/base/Converter;
.source "Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IdentityConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/base/Converter",
        "<TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 393
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/roboguice/shaded/goole/common/base/Converter;)Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Converter",
            "<TT;TS;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Converter",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    .local p1, "otherConverter":Lorg/roboguice/shaded/goole/common/base/Converter;, "Lorg/roboguice/shaded/goole/common/base/Converter<TT;TS;>;"
    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Converter;

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    return-object p0
.end method

.method public bridge synthetic reverse()Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1

    .prologue
    .line 393
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;->reverse()Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter<TT;>;"
    const-string v0, "Converter.identity()"

    return-object v0
.end method
