.class final Lorg/ligi/passandroid/ui/PassListActivity$drawerToggle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PassListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Landroid/support/v7/app/ActionBarDrawerToggle;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/support/v7/app/ActionBarDrawerToggle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassListActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassListActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$drawerToggle$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 53
    new-instance v2, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListActivity$drawerToggle$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassListActivity$drawerToggle$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    sget v3, Lorg/ligi/passandroid/R$id;->drawer_layout:I

    invoke-virtual {v1, v3}, Lorg/ligi/passandroid/ui/PassListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x7f070039

    const v4, 0x7f070038

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity$drawerToggle$2;->invoke()Landroid/support/v7/app/ActionBarDrawerToggle;

    move-result-object v0

    return-object v0
.end method
