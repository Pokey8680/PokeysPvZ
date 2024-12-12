.class public final enum Lorg/restlet/engine/connector/MessageState;
.super Ljava/lang/Enum;
.source "MessageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/engine/connector/MessageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/engine/connector/MessageState;

.field public static final enum BODY:Lorg/restlet/engine/connector/MessageState;

.field public static final enum END:Lorg/restlet/engine/connector/MessageState;

.field public static final enum HEADERS:Lorg/restlet/engine/connector/MessageState;

.field public static final enum IDLE:Lorg/restlet/engine/connector/MessageState;

.field public static final enum START:Lorg/restlet/engine/connector/MessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/restlet/engine/connector/MessageState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/connector/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    .line 47
    new-instance v0, Lorg/restlet/engine/connector/MessageState;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lorg/restlet/engine/connector/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    .line 50
    new-instance v0, Lorg/restlet/engine/connector/MessageState;

    const-string v1, "HEADERS"

    invoke-direct {v0, v1, v4}, Lorg/restlet/engine/connector/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/MessageState;->HEADERS:Lorg/restlet/engine/connector/MessageState;

    .line 53
    new-instance v0, Lorg/restlet/engine/connector/MessageState;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v5}, Lorg/restlet/engine/connector/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    .line 56
    new-instance v0, Lorg/restlet/engine/connector/MessageState;

    const-string v1, "END"

    invoke-direct {v0, v1, v6}, Lorg/restlet/engine/connector/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/MessageState;->END:Lorg/restlet/engine/connector/MessageState;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/restlet/engine/connector/MessageState;

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->HEADERS:Lorg/restlet/engine/connector/MessageState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->END:Lorg/restlet/engine/connector/MessageState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/restlet/engine/connector/MessageState;->$VALUES:[Lorg/restlet/engine/connector/MessageState;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/connector/MessageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/restlet/engine/connector/MessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/MessageState;

    return-object v0
.end method

.method public static values()[Lorg/restlet/engine/connector/MessageState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->$VALUES:[Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {v0}, [Lorg/restlet/engine/connector/MessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/engine/connector/MessageState;

    return-object v0
.end method
