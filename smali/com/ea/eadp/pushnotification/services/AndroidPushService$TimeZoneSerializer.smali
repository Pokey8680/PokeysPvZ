.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;
.super Ljava/lang/Object;
.source "AndroidPushService.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/eadp/pushnotification/services/AndroidPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/util/TimeZone;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;


# direct methods
.method private constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;
    .param p2, "x1"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/reflect/Type;
    .param p3, "x2"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 408
    check-cast p1, Ljava/util/TimeZone;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;->serialize(Ljava/util/TimeZone;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/TimeZone;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Ljava/util/TimeZone;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "serializationContext"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 411
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
