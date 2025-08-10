.class public abstract Lcom/duckduckgo/app/global/DuckDuckGoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DuckDuckGoActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/duckduckgo/app/global/DuckDuckGoActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1e63f516e6035316L

    const/16 v2, 0xc

    const-string v3, "com/duckduckgo/app/global/DuckDuckGoActivity"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    :goto_0
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 p1, 0x6

    aput-boolean v2, v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x7

    aput-boolean v2, v0, p1

    :goto_1
    const/16 p1, 0x8

    aput-boolean v2, v0, p1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    aput-boolean v2, v0, v2

    return-void
.end method
