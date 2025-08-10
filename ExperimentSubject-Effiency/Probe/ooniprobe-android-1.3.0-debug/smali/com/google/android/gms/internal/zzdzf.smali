.class public final Lcom/google/android/gms/internal/zzdzf;
.super Lcom/google/android/gms/internal/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzdyr<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private zzmhd:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private zzmhu:Lcom/google/android/gms/internal/zzdza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdza;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdyr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdza;Ljava/util/Comparator;Lcom/google/android/gms/internal/zzdzg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzdzf;-><init>(Lcom/google/android/gms/internal/zzdza;Ljava/util/Comparator;)V

    return-void
.end method

.method public static zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdzf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/android/gms/internal/zzdzf<",
            "TA;TB;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdys;->zzbrl()Lcom/google/android/gms/internal/zzdyu;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzdzh;->zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzdyu;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdzf;

    move-result-object p0

    return-object p0
.end method

.method private final zzbn(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrs()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdzf;->zzbn(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdzf;->zzbn(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdza;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdza;->size()I

    move-result p1

    add-int/2addr v1, p1

    return v1

    :cond_0
    if-gez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzdza;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrs()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/zzdyv;-><init>(Lcom/google/android/gms/internal/zzdza;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->size()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzdzc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdzc<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdza;->zza(Lcom/google/android/gms/internal/zzdzc;)V

    return-void
.end method

.method public final zzbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdyr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/android/gms/internal/zzdyr<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdyr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzdza;->zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdza;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/google/android/gms/internal/zzdzb;->zzmhp:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzdza;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/zzdza;Lcom/google/android/gms/internal/zzdza;)Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzdzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzdzf;-><init>(Lcom/google/android/gms/internal/zzdza;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final zzbf(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzdyv;-><init>(Lcom/google/android/gms/internal/zzdza;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public final zzbg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdza;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdza;->zzbrs()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdza;->zzbrs()Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    if-gez v3, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrr()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrs()Lcom/google/android/gms/internal/zzdza;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t find predecessor key of non-present key: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final zzbri()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbrt()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbrj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->zzbru()Lcom/google/android/gms/internal/zzdza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdza;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbrk()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/zzdyv;-><init>(Lcom/google/android/gms/internal/zzdza;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdyr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/gms/internal/zzdyr<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhu:Lcom/google/android/gms/internal/zzdza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzdza;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdza;

    move-result-object v2

    sget v5, Lcom/google/android/gms/internal/zzdzb;->zzmhp:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzdza;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/zzdza;Lcom/google/android/gms/internal/zzdza;)Lcom/google/android/gms/internal/zzdza;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzdzf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzf;->zzmhd:Ljava/util/Comparator;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/zzdzf;-><init>(Lcom/google/android/gms/internal/zzdza;Ljava/util/Comparator;)V

    return-object p2
.end method
