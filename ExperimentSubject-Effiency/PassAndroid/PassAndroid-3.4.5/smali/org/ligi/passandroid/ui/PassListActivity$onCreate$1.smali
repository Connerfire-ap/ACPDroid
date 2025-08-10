.class public final Lorg/ligi/passandroid/ui/PassListActivity$onCreate$1;
.super Ljava/lang/Object;
.source "PassListActivity.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "org/ligi/passandroid/ui/PassListActivity$onCreate$1",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "(Lorg/ligi/passandroid/ui/PassListActivity;)V",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassListActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassListActivity;)V
    .locals 0
    .param p1, "$outer"    # Lorg/ligi/passandroid/ui/PassListActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 163
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    sget-object v0, Lorg/ligi/passandroid/model/State;->INSTANCE:Lorg/ligi/passandroid/model/State;

    invoke-virtual {v0, p1}, Lorg/ligi/passandroid/model/State;->setLastSelectedTab(I)V

    .line 167
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassListActivity;->supportInvalidateOptionsMenu()V

    .line 168
    return-void
.end method
