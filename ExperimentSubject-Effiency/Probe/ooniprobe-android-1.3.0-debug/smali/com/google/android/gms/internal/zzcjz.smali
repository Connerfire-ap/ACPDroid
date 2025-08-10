.class final synthetic Lcom/google/android/gms/internal/zzcjz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzjga:Lcom/google/android/gms/internal/zzcjx;

.field private final zzjge:Lcom/google/android/gms/internal/zzcgj;

.field private final zzjgf:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjx;Lcom/google/android/gms/internal/zzcgj;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjz;->zzjga:Lcom/google/android/gms/internal/zzcjx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjz;->zzjge:Lcom/google/android/gms/internal/zzcgj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjz;->zzjgf:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjz;->zzjga:Lcom/google/android/gms/internal/zzcjx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjz;->zzjge:Lcom/google/android/gms/internal/zzcgj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjz;->zzjgf:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;->zza(Lcom/google/android/gms/internal/zzcgj;Landroid/app/job/JobParameters;)V

    return-void
.end method
