.class final Lcom/google/android/gms/internal/zzcht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcho;

.field private synthetic zzjdu:Lcom/google/android/gms/internal/zzcfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcho;Lcom/google/android/gms/internal/zzcfi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcht;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcht;->zzjdu:Lcom/google/android/gms/internal/zzcfi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcht;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcht;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcht;->zzjdu:Lcom/google/android/gms/internal/zzcfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchj;->zzd(Lcom/google/android/gms/internal/zzcfi;)V

    return-void
.end method
