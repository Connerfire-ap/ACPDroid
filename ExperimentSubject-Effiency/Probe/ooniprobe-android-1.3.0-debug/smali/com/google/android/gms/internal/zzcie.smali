.class final Lcom/google/android/gms/internal/zzcie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzckm;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzjds:Lcom/google/android/gms/internal/zzcff;

.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcho;Lcom/google/android/gms/internal/zzcff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcie;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcie;->zzjds:Lcom/google/android/gms/internal/zzcff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcie;->zzjds:Lcom/google/android/gms/internal/zzcff;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfl;->zziu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
