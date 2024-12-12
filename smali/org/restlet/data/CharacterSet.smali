.class public final Lorg/restlet/data/CharacterSet;
.super Lorg/restlet/data/Metadata;
.source "CharacterSet.java"


# static fields
.field public static final ALL:Lorg/restlet/data/CharacterSet;

.field public static final DEFAULT:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_1:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_10:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_2:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_3:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_4:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_5:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_6:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_7:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_8:Lorg/restlet/data/CharacterSet;

.field public static final ISO_8859_9:Lorg/restlet/data/CharacterSet;

.field public static final MACINTOSH:Lorg/restlet/data/CharacterSet;

.field public static final US_ASCII:Lorg/restlet/data/CharacterSet;

.field public static final UTF_16:Lorg/restlet/data/CharacterSet;

.field public static final UTF_8:Lorg/restlet/data/CharacterSet;

.field public static final WINDOWS_1252:Lorg/restlet/data/CharacterSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "*"

    const-string v2, "All character sets"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    .line 51
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-1"

    const-string v2, "ISO/IEC 8859-1 or Latin 1 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    .line 59
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-2"

    const-string v2, "ISO/IEC 8859-2 or Latin 2 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_2:Lorg/restlet/data/CharacterSet;

    .line 67
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-3"

    const-string v2, "ISO/IEC 8859-3 or Latin 3 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_3:Lorg/restlet/data/CharacterSet;

    .line 75
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-4"

    const-string v2, "ISO/IEC 8859-4 or Latin 4 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_4:Lorg/restlet/data/CharacterSet;

    .line 83
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-5"

    const-string v2, "ISO/IEC 8859-5 or Cyrillic character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_5:Lorg/restlet/data/CharacterSet;

    .line 91
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-6"

    const-string v2, "ISO/IEC 8859-6 or Arabic character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_6:Lorg/restlet/data/CharacterSet;

    .line 99
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-7"

    const-string v2, "ISO/IEC 8859-7 or Greek character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_7:Lorg/restlet/data/CharacterSet;

    .line 107
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-8"

    const-string v2, "ISO/IEC 8859-8 or Hebrew character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_8:Lorg/restlet/data/CharacterSet;

    .line 115
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-9"

    const-string v2, "ISO/IEC 8859-9 or Latin 5 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_9:Lorg/restlet/data/CharacterSet;

    .line 124
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "ISO-8859-10"

    const-string v2, "ISO/IEC 8859-10 or Latin 6 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_10:Lorg/restlet/data/CharacterSet;

    .line 133
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "macintosh"

    const-string v2, "Mac OS Roman character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->MACINTOSH:Lorg/restlet/data/CharacterSet;

    .line 141
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "US-ASCII"

    const-string v2, "US ASCII character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->US_ASCII:Lorg/restlet/data/CharacterSet;

    .line 149
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "UTF-16"

    const-string v2, "UTF 16 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->UTF_16:Lorg/restlet/data/CharacterSet;

    .line 157
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "UTF-8"

    const-string v2, "UTF 8 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    .line 167
    new-instance v0, Lorg/restlet/data/CharacterSet;

    const-string v1, "windows-1252"

    const-string v2, "Windows 1232 character set"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->WINDOWS_1252:Lorg/restlet/data/CharacterSet;

    .line 175
    new-instance v0, Lorg/restlet/data/CharacterSet;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/nio/charset/Charset;)V

    sput-object v0, Lorg/restlet/data/CharacterSet;->DEFAULT:Lorg/restlet/data/CharacterSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "Character set or range of character sets"

    invoke-direct {p0, v0, v1}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {p1}, Lorg/restlet/data/CharacterSet;->getIanaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/restlet/data/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private static getIanaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 192
    const-string v0, "MACROMAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lorg/restlet/data/CharacterSet;->MACINTOSH:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    .line 219
    :cond_0
    :goto_0
    return-object p0

    .line 194
    :cond_1
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    sget-object v0, Lorg/restlet/data/CharacterSet;->US_ASCII:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 196
    :cond_2
    const-string v0, "latin1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_3
    const-string v0, "latin2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_2:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 200
    :cond_4
    const-string v0, "latin3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_3:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_5
    const-string v0, "latin4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_4:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_6
    const-string v0, "cyrillic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_5:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 206
    :cond_7
    const-string v0, "arabic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_6:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 208
    :cond_8
    const-string v0, "greek"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_7:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_9
    const-string v0, "hebrew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 212
    :cond_a
    const-string v0, "latin5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_9:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 214
    :cond_b
    const-string v0, "latin6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_10:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/CharacterSet;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "result":Lorg/restlet/data/CharacterSet;
    invoke-static {p0}, Lorg/restlet/data/CharacterSet;->getIanaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 234
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    sget-object v1, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    sget-object v0, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    sget-object v1, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    goto :goto_0

    .line 239
    :cond_2
    sget-object v1, Lorg/restlet/data/CharacterSet;->US_ASCII:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    sget-object v0, Lorg/restlet/data/CharacterSet;->US_ASCII:Lorg/restlet/data/CharacterSet;

    goto :goto_0

    .line 241
    :cond_3
    sget-object v1, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    goto :goto_0

    .line 243
    :cond_4
    sget-object v1, Lorg/restlet/data/CharacterSet;->UTF_16:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_16:Lorg/restlet/data/CharacterSet;

    goto :goto_0

    .line 245
    :cond_5
    sget-object v1, Lorg/restlet/data/CharacterSet;->WINDOWS_1252:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    sget-object v0, Lorg/restlet/data/CharacterSet;->WINDOWS_1252:Lorg/restlet/data/CharacterSet;

    goto :goto_0

    .line 247
    :cond_6
    sget-object v1, Lorg/restlet/data/CharacterSet;->MACINTOSH:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 248
    sget-object v0, Lorg/restlet/data/CharacterSet;->MACINTOSH:Lorg/restlet/data/CharacterSet;

    goto :goto_0

    .line 250
    :cond_7
    new-instance v0, Lorg/restlet/data/CharacterSet;

    .end local v0    # "result":Lorg/restlet/data/CharacterSet;
    invoke-direct {v0, p0}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;)V

    .restart local v0    # "result":Lorg/restlet/data/CharacterSet;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 293
    instance-of v0, p1, Lorg/restlet/data/CharacterSet;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/restlet/data/CharacterSet;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/restlet/data/Metadata;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public includes(Lorg/restlet/data/Metadata;)Z
    .locals 1
    .param p1, "included"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 328
    sget-object v0, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

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

.method public toCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method
