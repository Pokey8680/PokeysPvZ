.class public final Lorg/restlet/routing/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# static fields
.field public static final TYPE_ALL:I = 0x1

.field public static final TYPE_ALPHA:I = 0x2

.field public static final TYPE_ALPHA_DIGIT:I = 0x3

.field public static final TYPE_COMMENT:I = 0x4

.field public static final TYPE_COMMENT_ATTRIBUTE:I = 0x5

.field public static final TYPE_DIGIT:I = 0x6

.field public static final TYPE_TOKEN:I = 0x7

.field public static final TYPE_URI_ALL:I = 0x8

.field public static final TYPE_URI_FRAGMENT:I = 0x9

.field public static final TYPE_URI_PATH:I = 0xa

.field public static final TYPE_URI_QUERY:I = 0xb

.field public static final TYPE_URI_QUERY_PARAM:I = 0xc

.field public static final TYPE_URI_SCHEME:I = 0xd

.field public static final TYPE_URI_SEGMENT:I = 0xe

.field public static final TYPE_URI_UNRESERVED:I = 0xf

.field public static final TYPE_WORD:I = 0x10


# instance fields
.field private volatile decodingOnParse:Z

.field private volatile defaultValue:Ljava/lang/String;

.field private volatile encodingOnFormat:Z

.field private volatile fixed:Z

.field private volatile required:Z

.field private volatile type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lorg/restlet/routing/Variable;-><init>(ILjava/lang/String;ZZ)V

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 130
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/restlet/routing/Variable;-><init>(ILjava/lang/String;ZZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "fixed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 149
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/routing/Variable;-><init>(ILjava/lang/String;ZZZZ)V

    .line 150
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "fixed"    # Z
    .param p5, "decodingOnParse"    # Z
    .param p6, "encodingOnFormat"    # Z

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lorg/restlet/routing/Variable;->type:I

    .line 173
    iput-object p2, p0, Lorg/restlet/routing/Variable;->defaultValue:Ljava/lang/String;

    .line 174
    iput-boolean p3, p0, Lorg/restlet/routing/Variable;->required:Z

    .line 175
    iput-boolean p4, p0, Lorg/restlet/routing/Variable;->fixed:Z

    .line 176
    iput-boolean p5, p0, Lorg/restlet/routing/Variable;->decodingOnParse:Z

    .line 177
    iput-boolean p6, p0, Lorg/restlet/routing/Variable;->encodingOnFormat:Z

    .line 178
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    iget v0, p0, Lorg/restlet/routing/Variable;->type:I

    packed-switch v0, :pswitch_data_0

    .line 203
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p1

    .line 191
    .restart local p1    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 197
    :pswitch_4
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 199
    :pswitch_5
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :pswitch_6
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/restlet/routing/Variable;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/restlet/routing/Variable;->type:I

    return v0
.end method

.method public isDecodingOnParse()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/restlet/routing/Variable;->decodingOnParse:Z

    return v0
.end method

.method public isEncodingOnFormat()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lorg/restlet/routing/Variable;->encodingOnFormat:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/restlet/routing/Variable;->fixed:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/restlet/routing/Variable;->required:Z

    return v0
.end method

.method public setDecodingOnParse(Z)V
    .locals 0
    .param p1, "decodingOnParse"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lorg/restlet/routing/Variable;->decodingOnParse:Z

    .line 273
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lorg/restlet/routing/Variable;->defaultValue:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setEncodingOnFormat(Z)V
    .locals 0
    .param p1, "encodingOnFormat"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lorg/restlet/routing/Variable;->encodingOnFormat:Z

    .line 294
    return-void
.end method

.method public setFixed(Z)V
    .locals 0
    .param p1, "fixed"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lorg/restlet/routing/Variable;->fixed:Z

    .line 304
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lorg/restlet/routing/Variable;->required:Z

    .line 314
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 323
    iput p1, p0, Lorg/restlet/routing/Variable;->type:I

    .line 324
    return-void
.end method
