.class final Lcom/google/android/gms/internal/zzcio;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzijk:Ljava/lang/String;

.field private synthetic zzjdv:Ljava/lang/String;

.field private synthetic zzjdw:Ljava/lang/String;

.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;

.field private synthetic zzjej:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcio;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcio;->zzjej:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcio;->zzijk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcio;->zzjdv:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcio;->zzjdw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcik;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcio;->zzjej:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcio;->zzijk:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcio;->zzjdv:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcio;->zzjdw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcjd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
