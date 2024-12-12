.class public final enum Lorg/restlet/engine/Edition;
.super Ljava/lang/Enum;
.source "Edition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/Edition$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/engine/Edition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/engine/Edition;

.field public static final enum ANDROID:Lorg/restlet/engine/Edition;

.field public static final CURRENT:Lorg/restlet/engine/Edition;

.field public static final enum GAE:Lorg/restlet/engine/Edition;

.field public static final enum GWT:Lorg/restlet/engine/Edition;

.field public static final enum JEE:Lorg/restlet/engine/Edition;

.field public static final enum JSE:Lorg/restlet/engine/Edition;

.field public static final enum OSGI:Lorg/restlet/engine/Edition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lorg/restlet/engine/Edition;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v3}, Lorg/restlet/engine/Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    new-instance v0, Lorg/restlet/engine/Edition;

    const-string v1, "GAE"

    invoke-direct {v0, v1, v4}, Lorg/restlet/engine/Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/Edition;->GAE:Lorg/restlet/engine/Edition;

    new-instance v0, Lorg/restlet/engine/Edition;

    const-string v1, "GWT"

    invoke-direct {v0, v1, v5}, Lorg/restlet/engine/Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    new-instance v0, Lorg/restlet/engine/Edition;

    const-string v1, "JEE"

    invoke-direct {v0, v1, v6}, Lorg/restlet/engine/Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/Edition;->JEE:Lorg/restlet/engine/Edition;

    new-instance v0, Lorg/restlet/engine/Edition;

    const-string v1, "JSE"

    invoke-direct {v0, v1, v7}, Lorg/restlet/engine/Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/Edition;->JSE:Lorg/restlet/engine/Edition;

    new-instance v0, Lorg/restlet/engine/Edition;

    const-string v1, "OSGI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/Edition;->OSGI:Lorg/restlet/engine/Edition;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/restlet/engine/Edition;

    sget-object v1, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/engine/Edition;->GAE:Lorg/restlet/engine/Edition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    aput-object v1, v0, v5

    sget-object v1, Lorg/restlet/engine/Edition;->JEE:Lorg/restlet/engine/Edition;

    aput-object v1, v0, v6

    sget-object v1, Lorg/restlet/engine/Edition;->JSE:Lorg/restlet/engine/Edition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/restlet/engine/Edition;->OSGI:Lorg/restlet/engine/Edition;

    aput-object v2, v0, v1

    sput-object v0, Lorg/restlet/engine/Edition;->$VALUES:[Lorg/restlet/engine/Edition;

    .line 49
    sget-object v0, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    sput-object v0, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/Edition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/restlet/engine/Edition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/Edition;

    return-object v0
.end method

.method public static values()[Lorg/restlet/engine/Edition;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/restlet/engine/Edition;->$VALUES:[Lorg/restlet/engine/Edition;

    invoke-virtual {v0}, [Lorg/restlet/engine/Edition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/engine/Edition;

    return-object v0
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lorg/restlet/engine/Edition$1;->$SwitchMap$org$restlet$engine$Edition:[I

    invoke-virtual {p0}, Lorg/restlet/engine/Edition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    const-string v0, "Android"

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v0, "Google App Engine"

    goto :goto_0

    .line 63
    :pswitch_2
    const-string v0, "Google Web Toolkit"

    goto :goto_0

    .line 65
    :pswitch_3
    const-string v0, "Java Enterprise Edition"

    goto :goto_0

    .line 67
    :pswitch_4
    const-string v0, "Java Standard Edition"

    goto :goto_0

    .line 69
    :pswitch_5
    const-string v0, "OSGi"

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMediumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lorg/restlet/engine/Edition$1;->$SwitchMap$org$restlet$engine$Edition:[I

    invoke-virtual {p0}, Lorg/restlet/engine/Edition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "Android"

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "GAE"

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "GWT"

    goto :goto_0

    .line 89
    :pswitch_3
    const-string v0, "Java EE"

    goto :goto_0

    .line 91
    :pswitch_4
    const-string v0, "Java SE"

    goto :goto_0

    .line 93
    :pswitch_5
    const-string v0, "OSGi"

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getShortName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lorg/restlet/engine/Edition$1;->$SwitchMap$org$restlet$engine$Edition:[I

    invoke-virtual {p0}, Lorg/restlet/engine/Edition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    const-string v0, "Android"

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "GAE"

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v0, "GWT"

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v0, "JEE"

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v0, "JSE"

    goto :goto_0

    .line 117
    :pswitch_5
    const-string v0, "OSGi"

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
