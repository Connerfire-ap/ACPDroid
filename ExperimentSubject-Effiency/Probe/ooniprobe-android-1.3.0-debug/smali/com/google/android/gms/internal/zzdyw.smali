.class public final Lcom/google/android/gms/internal/zzdyw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzmhl:Lcom/google/android/gms/internal/zzdyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdyr<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdyr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdyr<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzdys;->zzbrl()Lcom/google/android/gms/internal/zzdyu;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzdys;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzdyu;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdyr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdyr;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzdyw;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzdyw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdyr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdyr;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdyr;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdyr;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdyr;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdyx;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdyr;->size()I

    move-result v0

    return v0
.end method

.method public final zzbf(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzdyr;->zzbf(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdyx;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbk(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdyw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzdyw<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdyr;->zzbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdyr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzdyw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdyw;-><init>(Lcom/google/android/gms/internal/zzdyr;)V

    return-object v0
.end method

.method public final zzbl(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdyw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzdyw<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzdyr;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdyr;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdyw;-><init>(Lcom/google/android/gms/internal/zzdyr;)V

    return-object v0
.end method

.method public final zzbm(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdyr;->zzbg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzbrk()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdyr;->zzbrk()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdyx;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbrm()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdyr;->zzbri()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbrn()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdyw;->zzmhl:Lcom/google/android/gms/internal/zzdyr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdyr;->zzbrj()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
