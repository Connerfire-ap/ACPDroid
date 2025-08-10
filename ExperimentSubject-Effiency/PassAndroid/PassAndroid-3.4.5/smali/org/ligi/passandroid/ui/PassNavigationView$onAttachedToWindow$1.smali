.class final Lorg/ligi/passandroid/ui/PassNavigationView$onAttachedToWindow$1;
.super Ljava/lang/Object;
.source "PassNavigationView.kt"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassNavigationView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onNavigationItemSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassNavigationView;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassNavigationView;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassNavigationView$onAttachedToWindow$1;->this$0:Lorg/ligi/passandroid/ui/PassNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "item"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassNavigationView$onAttachedToWindow$1;->this$0:Lorg/ligi/passandroid/ui/PassNavigationView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/ui/PassNavigationView;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassNavigationView$onAttachedToWindow$1;->this$0:Lorg/ligi/passandroid/ui/PassNavigationView;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    const/4 v1, 0x1

    .line 47
    .end local v0    # "it":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
