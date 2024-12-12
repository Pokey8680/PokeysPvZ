.class public final enum Lcom/ea/nimble/IHttpRequest$Method;
.super Ljava/lang/Enum;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/IHttpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum DELETE:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum GET:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum HEAD:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum POST:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum PUT:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum UNRECOGNIZED:Lcom/ea/nimble/IHttpRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    .line 12
    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->HEAD:Lcom/ea/nimble/IHttpRequest$Method;

    .line 13
    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    .line 14
    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    .line 15
    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->DELETE:Lcom/ea/nimble/IHttpRequest$Method;

    .line 16
    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->UNRECOGNIZED:Lcom/ea/nimble/IHttpRequest$Method;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ea/nimble/IHttpRequest$Method;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->HEAD:Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->DELETE:Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->UNRECOGNIZED:Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->$VALUES:[Lcom/ea/nimble/IHttpRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/ea/nimble/IHttpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IHttpRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/ea/nimble/IHttpRequest$Method;->$VALUES:[Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v0}, [Lcom/ea/nimble/IHttpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/IHttpRequest$Method;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/ea/nimble/IHttpRequest$1;->$SwitchMap$com$ea$nimble$IHttpRequest$Method:[I

    invoke-virtual {p0}, Lcom/ea/nimble/IHttpRequest$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 25
    :pswitch_1
    const-string v0, "HEAD"

    goto :goto_0

    .line 27
    :pswitch_2
    const-string v0, "POST"

    goto :goto_0

    .line 29
    :pswitch_3
    const-string v0, "PUT"

    goto :goto_0

    .line 31
    :pswitch_4
    const-string v0, "DELETE"

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
