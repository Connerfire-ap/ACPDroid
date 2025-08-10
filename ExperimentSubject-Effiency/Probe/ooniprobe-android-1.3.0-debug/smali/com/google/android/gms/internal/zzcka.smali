.class final Lcom/google/android/gms/internal/zzcka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjay:Lcom/google/android/gms/internal/zzchj;

.field private synthetic zzjgg:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjx;Lcom/google/android/gms/internal/zzchj;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcka;->zzjay:Lcom/google/android/gms/internal/zzchj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcka;->zzjgg:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcka;->zzjay:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcka;->zzjay:Lcom/google/android/gms/internal/zzchj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcka;->zzjgg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchj;->zzi(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcka;->zzjay:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazv()V

    return-void
.end method
