.class public Ljavax/ws/rs/core/NewCookie;
.super Ljavax/ws/rs/core/Cookie;
.source "NewCookie.java"


# static fields
.field public static final DEFAULT_MAX_AGE:I = -0x1

.field private static final delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate",
            "<",
            "Ljavax/ws/rs/core/NewCookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private maxAge:I

.field private secure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v0

    const-class v1, Ljavax/ws/rs/core/NewCookie;

    invoke-virtual {v0, v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createHeaderDelegate(Ljava/lang/Class;)Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/core/NewCookie;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "maxAge"    # I
    .param p8, "secure"    # Z

    .prologue
    .line 84
    invoke-direct/range {p0 .. p5}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 85
    iput-object p6, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 86
    iput p7, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 87
    iput-boolean p8, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "comment"    # Ljava/lang/String;
    .param p6, "maxAge"    # I
    .param p7, "secure"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 66
    iput-object p5, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 67
    iput p6, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 68
    iput-boolean p7, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Ljavax/ws/rs/core/Cookie;)V
    .locals 7
    .param p1, "cookie"    # Ljavax/ws/rs/core/Cookie;

    .prologue
    const/4 v6, 0x0

    .line 96
    if-nez p1, :cond_0

    move-object v1, v6

    :goto_0
    if-nez p1, :cond_1

    move-object v2, v6

    :goto_1
    if-nez p1, :cond_2

    move-object v3, v6

    :goto_2
    if-nez p1, :cond_3

    move-object v4, v6

    :goto_3
    if-nez p1, :cond_4

    const/4 v5, 0x1

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iput-object v6, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 101
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljavax/ws/rs/core/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljavax/ws/rs/core/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljavax/ws/rs/core/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljavax/ws/rs/core/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljavax/ws/rs/core/Cookie;->getVersion()I

    move-result v5

    goto :goto_4
.end method

.method public constructor <init>(Ljavax/ws/rs/core/Cookie;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "cookie"    # Ljavax/ws/rs/core/Cookie;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "maxAge"    # I
    .param p4, "secure"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1}, Ljavax/ws/rs/core/NewCookie;-><init>(Ljavax/ws/rs/core/Cookie;)V

    .line 113
    iput-object p2, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    .line 114
    iput p3, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    .line 115
    iput-boolean p4, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    .line 116
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/NewCookie;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Ljavax/ws/rs/core/NewCookie;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/NewCookie;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Ljavax/ws/rs/core/NewCookie;

    .line 211
    .local v0, "other":Ljavax/ws/rs/core/NewCookie;
    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getVersion()I

    move-result v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getVersion()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 220
    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    :cond_4
    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/ws/rs/core/NewCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :cond_5
    iget-object v2, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    :cond_6
    iget v2, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    iget v3, v0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    if-ne v2, v3, :cond_0

    .line 232
    iget-boolean v2, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    if-ne v2, v3, :cond_0

    .line 235
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0}, Ljavax/ws/rs/core/Cookie;->hashCode()I

    move-result v0

    .line 188
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x3b

    iget-object v1, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/ws/rs/core/NewCookie;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 189
    mul-int/lit8 v1, v0, 0x3b

    iget v3, p0, Ljavax/ws/rs/core/NewCookie;->maxAge:I

    add-int v0, v1, v3

    .line 190
    mul-int/lit8 v1, v0, 0x3b

    iget-boolean v3, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 191
    return v0

    :cond_1
    move v1, v2

    .line 188
    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Ljavax/ws/rs/core/NewCookie;->secure:Z

    return v0
.end method

.method public toCookie()Ljavax/ws/rs/core/Cookie;
    .locals 6

    .prologue
    .line 167
    new-instance v0, Ljavax/ws/rs/core/Cookie;

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/ws/rs/core/NewCookie;->getVersion()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Ljavax/ws/rs/core/NewCookie;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
