.class public final Lcom/millennialmedia/google/gson/JsonArray;
.super Lcom/millennialmedia/google/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/millennialmedia/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public add(Lcom/millennialmedia/google/gson/JsonElement;)V
    .locals 1
    .param p1, "element"    # Lcom/millennialmedia/google/gson/JsonElement;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addAll(Lcom/millennialmedia/google/gson/JsonArray;)V
    .locals 2
    .param p1, "array"    # Lcom/millennialmedia/google/gson/JsonArray;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method

.method deepCopy()Lcom/millennialmedia/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 51
    new-instance v2, Lcom/millennialmedia/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/millennialmedia/google/gson/JsonArray;-><init>()V

    .line 52
    .local v2, "result":Lcom/millennialmedia/google/gson/JsonArray;
    iget-object v3, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    .line 53
    .local v0, "element":Lcom/millennialmedia/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->deepCopy()Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/google/gson/JsonArray;->add(Lcom/millennialmedia/google/gson/JsonElement;)V

    goto :goto_0

    .line 55
    .end local v0    # "element":Lcom/millennialmedia/google/gson/JsonElement;
    :cond_0
    return-object v2
.end method

.method bridge synthetic deepCopy()Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonArray;->deepCopy()Lcom/millennialmedia/google/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 350
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/millennialmedia/google/gson/JsonArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/millennialmedia/google/gson/JsonArray;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    return-object v0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
