.class final synthetic Lcom/google/android/gms/internal/zzcjy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzjga:Lcom/google/android/gms/internal/zzcjx;

.field private final zzjgb:I

.field private final zzjgc:Lcom/google/android/gms/internal/zzcgj;

.field private final zzjgd:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjx;ILcom/google/android/gms/internal/zzcgj;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjy;->zzjga:Lcom/google/android/gms/internal/zzcjx;

    iput p2, p0, Lcom/google/android/gms/internal/zzcjy;->zzjgb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjy;->zzjgc:Lcom/google/android/gms/internal/zzcgj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjy;->zzjgd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjy;->zzjga:Lcom/google/android/gms/internal/zzcjx;

    iget v1, p0, Lcom/google/android/gms/internal/zzcjy;->zzjgb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjy;->zzjgc:Lcom/google/android/gms/internal/zzcgj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjy;->zzjgd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcjx;->zza(ILcom/google/android/gms/internal/zzcgj;Landroid/content/Intent;)V

    return-void
.end method
