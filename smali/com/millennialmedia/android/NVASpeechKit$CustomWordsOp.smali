.class public final enum Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;
.super Ljava/lang/Enum;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomWordsOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

.field public static final enum Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

.field public static final enum Remove:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    const-string v1, "Add"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    const-string v1, "Remove"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Remove:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Remove:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    aput-object v1, v0, v3

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->$VALUES:[Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->$VALUES:[Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v0}, [Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    return-object v0
.end method
