.class public final Lorg/ligi/passandroid/ui/PassAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PassAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0014H\u0016R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;",
        "passListActivity",
        "Landroid/support/v7/app/AppCompatActivity;",
        "passStoreProjection",
        "Lorg/ligi/passandroid/model/PassStoreProjection;",
        "(Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/PassStoreProjection;)V",
        "list",
        "",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "settings",
        "Lorg/ligi/passandroid/model/Settings;",
        "getSettings",
        "()Lorg/ligi/passandroid/model/Settings;",
        "getItemCount",
        "",
        "getItemId",
        "",
        "position",
        "onBindViewHolder",
        "",
        "viewHolder",
        "onCreateViewHolder",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "i",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation
.end field

.field private final passListActivity:Landroid/support/v7/app/AppCompatActivity;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

.field private final settings:Lorg/ligi/passandroid/model/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/PassStoreProjection;)V
    .locals 3
    .param p1, "passListActivity"    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStoreProjection"    # Lorg/ligi/passandroid/model/PassStoreProjection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "passListActivity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "passStoreProjection"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passListActivity:Landroid/support/v7/app/AppCompatActivity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    .line 22
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 63
    new-instance v1, Lorg/ligi/passandroid/ui/PassAdapter$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassAdapter$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 62
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 23
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 66
    new-instance v1, Lorg/ligi/passandroid/ui/PassAdapter$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassAdapter$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 65
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/Settings;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAdapter;->settings:Lorg/ligi/passandroid/model/Settings;

    .line 56
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/PassStoreProjection;->getPassList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPassListActivity$p(Lorg/ligi/passandroid/ui/PassAdapter;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passListActivity:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getSettings()Lorg/ligi/passandroid/model/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAdapter;->settings:Lorg/ligi/passandroid/model/Settings;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/ui/PassAdapter;->onBindViewHolder(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const-string v2, "viewHolder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/PassStoreProjection;->getPassList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/Pass;

    .line 40
    .local v0, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassAdapter;->passListActivity:Landroid/support/v7/app/AppCompatActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v0, v3, v2}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V

    .line 42
    invoke-virtual {p1}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    .line 44
    .local v1, "root":Landroid/support/v7/widget/CardView;
    new-instance v2, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, v0}, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;-><init>(Lorg/ligi/passandroid/ui/PassAdapter;Lorg/ligi/passandroid/model/pass/Pass;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v2, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$2;

    invoke-direct {v2, v1}, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$2;-><init>(Landroid/support/v7/widget/CardView;)V

    check-cast v2, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/ui/PassAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "i"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "viewGroup"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type android.support.v7.widget.CardView"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v1, Landroid/support/v7/widget/CardView;

    .line 29
    .local v1, "res":Landroid/support/v7/widget/CardView;
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassAdapter;->settings:Lorg/ligi/passandroid/model/Settings;

    invoke-interface {v2}, Lorg/ligi/passandroid/model/Settings;->isCondensedModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    new-instance v2, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;

    invoke-direct {v2, v1}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;-><init>(Landroid/support/v7/widget/CardView;)V

    check-cast v2, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    .line 32
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;

    invoke-direct {v2, v1}, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;-><init>(Landroid/support/v7/widget/CardView;)V

    check-cast v2, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    goto :goto_0
.end method
