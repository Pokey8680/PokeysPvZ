.class public final enum Lcom/millennialmedia/android/NVASpeechKit$State;
.super Ljava/lang/Enum;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/android/NVASpeechKit$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/android/NVASpeechKit$State;

.field public static final enum ERROR:Lcom/millennialmedia/android/NVASpeechKit$State;

.field public static final enum PROCESSING:Lcom/millennialmedia/android/NVASpeechKit$State;

.field public static final enum READY:Lcom/millennialmedia/android/NVASpeechKit$State;

.field public static final enum RECORDING:Lcom/millennialmedia/android/NVASpeechKit$State;

.field public static final enum VOCALIZING:Lcom/millennialmedia/android/NVASpeechKit$State;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v3, v2}, Lcom/millennialmedia/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->ERROR:Lcom/millennialmedia/android/NVASpeechKit$State;

    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    const-string v1, "VOCALIZING"

    const-string v2, "vocalizing"

    invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->VOCALIZING:Lcom/millennialmedia/android/NVASpeechKit$State;

    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    const-string v1, "RECORDING"

    const-string v2, "recording"

    invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->RECORDING:Lcom/millennialmedia/android/NVASpeechKit$State;

    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v6, v2}, Lcom/millennialmedia/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    .line 69
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    const-string v1, "PROCESSING"

    const-string v2, "processing"

    invoke-direct {v0, v1, v7, v2}, Lcom/millennialmedia/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->PROCESSING:Lcom/millennialmedia/android/NVASpeechKit$State;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/millennialmedia/android/NVASpeechKit$State;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->ERROR:Lcom/millennialmedia/android/NVASpeechKit$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->VOCALIZING:Lcom/millennialmedia/android/NVASpeechKit$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->RECORDING:Lcom/millennialmedia/android/NVASpeechKit$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->PROCESSING:Lcom/millennialmedia/android/NVASpeechKit$State;

    aput-object v1, v0, v7

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->$VALUES:[Lcom/millennialmedia/android/NVASpeechKit$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/millennialmedia/android/NVASpeechKit$State;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/android/NVASpeechKit$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/NVASpeechKit$State;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/android/NVASpeechKit$State;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->$VALUES:[Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-virtual {v0}, [Lcom/millennialmedia/android/NVASpeechKit$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/android/NVASpeechKit$State;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$State;->name:Ljava/lang/String;

    return-object v0
.end method
