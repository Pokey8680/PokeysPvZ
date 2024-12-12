.class Lcom/google/android/gms/internal/zzkw$2;
.super Lcom/google/android/gms/internal/zzkw$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkw;->startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzZP:Lcom/google/android/gms/internal/zzkw;

.field final synthetic zzZQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw$2;->zzZP:Lcom/google/android/gms/internal/zzkw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkw$2;->zzZQ:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzkw$zzb;-><init>(Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzkx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkw$2;->zza(Lcom/google/android/gms/internal/zzkx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzkx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzkw$zzb$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzkw$zzb$zza;-><init>(Lcom/google/android/gms/internal/zzkw$zzb;Lcom/google/android/gms/internal/zzkx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkw$2;->zzZP:Lcom/google/android/gms/internal/zzkw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkw;->zzb(Lcom/google/android/gms/internal/zzkw;)Lcom/google/android/gms/internal/zzla;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkw$2;->zzZQ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzkx;->zza(Lcom/google/android/gms/internal/zzky;Lcom/google/android/gms/internal/zzla;Ljava/lang/String;)V

    return-void
.end method
