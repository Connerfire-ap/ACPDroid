.class public final Lorg/ligi/passandroid/functions/CategoryHelperKt;
.super Ljava/lang/Object;
.source "CategoryHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0003H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "getCategoryDefaultBG",
        "",
        "category",
        "Lorg/ligi/passandroid/model/pass/PassType;",
        "getCategoryTopImageRes",
        "type",
        "getHumanCategoryString",
        "fromPass",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final getCategoryDefaultBG(Lorg/ligi/passandroid/model/pass/PassType;)I
    .locals 2
    .param p0, "category"    # Lorg/ligi/passandroid/model/pass/PassType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    const-string v0, "category"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, -0x1

    int-to-long v0, v0

    .line 24
    :goto_0
    long-to-int v0, v0

    return v0

    .line 25
    :pswitch_0
    const-wide v0, 0xff3d73e9L

    goto :goto_0

    .line 26
    :pswitch_1
    const-wide v0, 0xff9f3dd0L

    goto :goto_0

    .line 27
    :pswitch_2
    const-wide v0, 0xff9ccb05L

    goto :goto_0

    .line 28
    :pswitch_3
    const-wide v0, 0xfff29b21L

    goto :goto_0

    .line 29
    :pswitch_4
    const-wide v0, 0xff2a2727L

    goto :goto_0

    .line 30
    :pswitch_5
    const-wide v0, 0xffea3c48L

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final getCategoryTopImageRes(Lorg/ligi/passandroid/model/pass/PassType;)I
    .locals 3
    .param p0, "type"    # Lorg/ligi/passandroid/model/pass/PassType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    const v0, 0x7f020059

    const-string v1, "type"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    .line 38
    :pswitch_1
    const v0, 0x7f020056

    goto :goto_0

    .line 39
    :pswitch_2
    const v0, 0x7f020058

    goto :goto_0

    .line 40
    :pswitch_3
    const v0, 0x7f020057

    goto :goto_0

    .line 41
    :pswitch_4
    const v0, 0x7f02005b

    goto :goto_0

    .line 42
    :pswitch_5
    const v0, 0x7f02005a

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static final getHumanCategoryString(Lorg/ligi/passandroid/model/pass/PassType;)I
    .locals 2
    .param p0, "fromPass"    # Lorg/ligi/passandroid/model/pass/PassType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    const-string v0, "fromPass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 19
    const v0, 0x7f07002f

    .line 11
    :goto_0
    return v0

    .line 12
    :pswitch_0
    const v0, 0x7f070028

    goto :goto_0

    .line 13
    :pswitch_1
    const v0, 0x7f07002d

    goto :goto_0

    .line 14
    :pswitch_2
    const v0, 0x7f07002c

    goto :goto_0

    .line 15
    :pswitch_3
    const v0, 0x7f070030

    goto :goto_0

    .line 16
    :pswitch_4
    const v0, 0x7f07002e

    goto :goto_0

    .line 17
    :pswitch_5
    const v0, 0x7f07002b

    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
