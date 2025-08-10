.class public final Lcom/duckduckgo/app/home/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/duckduckgo/app/home/HomeActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showSearchActivity",
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

    sget-object v0, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1d4b19f38fa2d02L    # -5.714607417271817E299

    const/16 v2, 0x11

    const-string v3, "com/duckduckgo/app/home/HomeActivity"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$showSearchActivity(Lcom/duckduckgo/app/home/HomeActivity;)V
    .locals 3
    .param p0, "$this"    # Lcom/duckduckgo/app/home/HomeActivity;

    invoke-static {}, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Lcom/duckduckgo/app/home/HomeActivity;->showSearchActivity()V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final showSearchActivity()V
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    sget-object v1, Lcom/duckduckgo/app/browser/BrowserActivity;->Companion:Lcom/duckduckgo/app/browser/BrowserActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/browser/BrowserActivity$Companion;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 38
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    sget v4, Lcom/duckduckgo/app/browser/R$id;->searchInputBox:I

    invoke-virtual {p0, v4}, Lcom/duckduckgo/app/home/HomeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0e0046

    invoke-virtual {p0, v5}, Lcom/duckduckgo/app/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v2

    const-string v4, "ActivityOptionsCompat.ma\u2026ng.transition_url_input))"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-boolean v3, v0, v4

    .line 39
    .local v2, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    invoke-virtual {v2}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/duckduckgo/app/home/HomeActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 40
    const/4 v4, 0x5

    aput-boolean v3, v0, v4

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/home/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    :goto_0
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/home/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/home/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/home/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 p1, 0xb

    aput-boolean v2, v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/home/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc

    aput-boolean v2, v0, p1

    :goto_1
    const/16 p1, 0xd

    aput-boolean v2, v0, p1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/duckduckgo/app/home/HomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 31
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/home/HomeActivity;->setContentView(I)V

    aput-boolean v2, v0, v2

    .line 33
    sget v1, Lcom/duckduckgo/app/browser/R$id;->searchInputBox:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/home/HomeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/duckduckgo/app/home/HomeActivity$onCreate$1;

    invoke-direct {v3, p0}, Lcom/duckduckgo/app/home/HomeActivity$onCreate$1;-><init>(Lcom/duckduckgo/app/home/HomeActivity;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
