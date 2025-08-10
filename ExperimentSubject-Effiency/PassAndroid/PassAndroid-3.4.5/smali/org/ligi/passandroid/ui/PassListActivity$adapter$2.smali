.class final Lorg/ligi/passandroid/ui/PassListActivity$adapter$2;
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
        "Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;",
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
        "Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;",
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

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$adapter$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity$adapter$2;->invoke()Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassListActivity$adapter$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassListActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$adapter$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "supportFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;-><init>(Lorg/ligi/passandroid/model/PassClassifier;Landroid/support/v4/app/FragmentManager;)V

    return-object v0
.end method
