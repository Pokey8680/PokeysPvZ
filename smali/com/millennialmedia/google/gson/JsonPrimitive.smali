.class public final Lcom/millennialmedia/google/gson/JsonPrimitive;
.super Lcom/millennialmedia/google/gson/JsonElement;
.source "JsonPrimitive.java"


# static fields
.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private static isIntegral(Lcom/millennialmedia/google/gson/JsonPrimitive;)Z
    .locals 3
    .param p0, "primitive"    # Lcom/millennialmedia/google/gson/JsonPrimitive;

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 388
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 389
    .local v0, "number":Ljava/lang/Number;
    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 393
    .end local v0    # "number":Ljava/lang/Number;
    :cond_1
    return v1
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 7
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 322
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v5

    .line 326
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 327
    .local v1, "classOfPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/millennialmedia/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 328
    .local v4, "standardPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    .end local v4    # "standardPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method bridge synthetic deepCopy()Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->deepCopy()Lcom/millennialmedia/google/gson/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method deepCopy()Lcom/millennialmedia/google/gson/JsonPrimitive;
    .locals 0

    .prologue
    .line 103
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 357
    if-ne p0, p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v5

    .line 360
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_3

    :cond_2
    move v5, v6

    .line 361
    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 363
    check-cast v4, Lcom/millennialmedia/google/gson/JsonPrimitive;

    .line 364
    .local v4, "other":Lcom/millennialmedia/google/gson/JsonPrimitive;
    iget-object v7, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v7, :cond_4

    .line 365
    iget-object v7, v4, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 367
    :cond_4
    invoke-static {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isIntegral(Lcom/millennialmedia/google/gson/JsonPrimitive;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isIntegral(Lcom/millennialmedia/google/gson/JsonPrimitive;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 368
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 370
    :cond_5
    iget-object v7, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_8

    iget-object v7, v4, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_8

    .line 371
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 375
    .local v0, "a":D
    invoke-virtual {v4}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 376
    .local v2, "b":D
    cmpl-double v7, v0, v2

    if-eqz v7, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move v6, v5

    :cond_7
    move v5, v6

    goto :goto_0

    .line 378
    .end local v0    # "a":D
    .end local v2    # "b":D
    :cond_8
    iget-object v5, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object v6, v4, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAsBoolean()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAsByte()B
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public getAsCharacter()C
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsFloat()F
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getAsInt()I
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/google/gson/internal/LazilyParsedNumber;

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method public getAsShort()S
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 338
    iget-object v2, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 339
    const/16 v2, 0x1f

    .line 351
    :goto_0
    return v2

    .line 343
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isIntegral(Lcom/millennialmedia/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 345
    .local v0, "value":J
    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0

    .line 347
    .end local v0    # "value":J
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 349
    .restart local v0    # "value":J
    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0

    .line 351
    .end local v0    # "value":J
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 108
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 112
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "primitive":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 113
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 119
    .end local v0    # "c":C
    :goto_0
    return-void

    .line 115
    .restart local p1    # "primitive":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/millennialmedia/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 117
    iput-object p1, p0, Lcom/millennialmedia/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
