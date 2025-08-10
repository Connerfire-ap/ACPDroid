.class public abstract enum Lcom/squareup/leakcanary/AndroidExcludedRefs;
.super Ljava/lang/Enum;
.source "AndroidExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/leakcanary/AndroidExcludedRefs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum ACCOUNT_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum ACTIVITY_CHOOSE_MODEL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum ACTIVITY_CLIENT_RECORD__NEXT_IDLE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum ACTIVITY_MANAGER_MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum APP_WIDGET_HOST_CALLBACKS:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum AUDIO_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum AUDIO_MANAGER__MCONTEXT_STATIC:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum AW_RESOURCE__SRESOURCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum BLOCKING_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum BUBBLE_POPUP_HELPER__SHELPER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum CLIPBOARD_UI_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum CONNECTIVITY_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum EDITTEXT_BLINK_MESSAGEQUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum GESTURE_BOOST_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum INPUT_METHOD_MANAGER__ROOT_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum INPUT_METHOD_MANAGER__SERVED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum INSTRUMENTATION_RECOMMEND_ACTIVITY:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum LAYOUT_TRANSITION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum LGCONTEXT__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MAPPER_CLIENT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MEDIA_SCANNER_CONNECTION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MEDIA_SESSION_LEGACY_HELPER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum PERSONA_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum RESOURCES__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SEM_CLIPBOARD_MANAGER__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SEM_EMERGENCY_MANAGER__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPAN_CONTROLLER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPEECH_RECOGNIZER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPELL_CHECKER_SESSION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPEN_GESTURE_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SYSTEM_SENSOR_MANAGER__MAPPCONTEXTIMPL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum TEXT_LINE__SCACHED:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum TEXT_VIEW__MLAST_HOVERED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum USER_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum VIEW_CONFIGURATION__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;


# instance fields
.field final applies:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x15

    const/16 v8, 0x16

    const/16 v7, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$1;

    const-string v4, "ACTIVITY_CLIENT_RECORD__NEXT_IDLE"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v9, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CLIENT_RECORD__NEXT_IDLE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 70
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$2;

    const-string v4, "SPAN_CONTROLLER"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {v3, v4, v1, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPAN_CONTROLLER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 91
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$3;

    const-string v4, "MEDIA_SESSION_LEGACY_HELPER__SINSTANCE"

    const/4 v5, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v9, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SESSION_LEGACY_HELPER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 106
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$4;

    const-string v4, "TEXT_LINE__SCACHED"

    const/4 v5, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_7

    move v0, v1

    :goto_3
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_LINE__SCACHED:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 122
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$5;

    const-string v4, "BLOCKING_QUEUE"

    const/4 v5, 0x4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v9, :cond_8

    move v0, v1

    :goto_4
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BLOCKING_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 146
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$6;

    const-string v4, "INPUT_METHOD_MANAGER__SERVED_VIEW"

    const/4 v5, 0x5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v0, v6, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-gt v0, v6, :cond_9

    move v0, v1

    :goto_5
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__SERVED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 161
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$7;

    const-string v4, "INPUT_METHOD_MANAGER__ROOT_VIEW"

    const/4 v5, 0x6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v0, v6, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v0, v6, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$7;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__ROOT_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 172
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$8;

    const-string v4, "LAYOUT_TRANSITION"

    const/4 v5, 0x7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v0, v6, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_b

    move v0, v1

    :goto_7
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$8;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LAYOUT_TRANSITION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 182
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$9;

    const-string v4, "SPELL_CHECKER_SESSION"

    const/16 v5, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_c

    :cond_1
    move v0, v1

    :goto_8
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$9;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPELL_CHECKER_SESSION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 191
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$10;

    const-string v4, "ACTIVITY_CHOOSE_MODEL"

    const/16 v5, 0x9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-le v0, v6, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_d

    move v0, v1

    :goto_9
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$10;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CHOOSE_MODEL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 204
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$11;

    const-string v4, "SPEECH_RECOGNIZER"

    const/16 v5, 0xa

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v9, :cond_e

    move v0, v1

    :goto_a
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$11;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEECH_RECOGNIZER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 214
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$12;

    const-string v4, "ACCOUNT_MANAGER"

    const/16 v5, 0xb

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_f

    move v0, v1

    :goto_b
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$12;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACCOUNT_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 229
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$13;

    const-string v4, "MEDIA_SCANNER_CONNECTION"

    const/16 v5, 0xc

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_10

    move v0, v1

    :goto_c
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$13;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SCANNER_CONNECTION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 240
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$14;

    const-string v4, "USER_MANAGER__SINSTANCE"

    const/16 v5, 0xd

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v0, v6, :cond_11

    move v0, v1

    :goto_d
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$14;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->USER_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 254
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$15;

    const-string v4, "APP_WIDGET_HOST_CALLBACKS"

    const/16 v5, 0xe

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_12

    move v0, v1

    :goto_e
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$15;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->APP_WIDGET_HOST_CALLBACKS:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 265
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$16;

    const-string v4, "AUDIO_MANAGER"

    const/16 v5, 0xf

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_13

    move v0, v1

    :goto_f
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$16;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 279
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$17;

    const-string v4, "EDITTEXT_BLINK_MESSAGEQUEUE"

    const/16 v5, 0x10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_14

    move v0, v1

    :goto_10
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$17;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EDITTEXT_BLINK_MESSAGEQUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 294
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$18;

    const-string v4, "CONNECTIVITY_MANAGER__SINSTANCE"

    const/16 v5, 0x11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v0, v6, :cond_15

    move v0, v1

    :goto_11
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$18;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->CONNECTIVITY_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 314
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$19;

    const-string v4, "INSTRUMENTATION_RECOMMEND_ACTIVITY"

    const/16 v5, 0x12

    const-string v0, "Meizu"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_16

    move v0, v1

    :goto_12
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$19;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INSTRUMENTATION_RECOMMEND_ACTIVITY:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 322
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$20;

    const-string v4, "DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER"

    const-string v0, "motorola"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 323
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_17

    move v0, v1

    :goto_13
    invoke-direct {v3, v4, v7, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$20;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 335
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$21;

    const-string v4, "SPEN_GESTURE_MANAGER"

    const/16 v5, 0x14

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_18

    move v0, v1

    :goto_14
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$21;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEN_GESTURE_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 343
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$22;

    const-string v4, "GESTURE_BOOST_MANAGER"

    const-string v0, "HUAWEI"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-gt v0, v5, :cond_19

    move v0, v1

    :goto_15
    invoke-direct {v3, v4, v9, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$22;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->GESTURE_BOOST_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 351
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$23;

    const-string v4, "CLIPBOARD_UI_MANAGER__SINSTANCE"

    const-string v0, "samsung"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 352
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v9, :cond_1a

    move v0, v1

    :goto_16
    invoke-direct {v3, v4, v8, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$23;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->CLIPBOARD_UI_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 363
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$24;

    const-string v4, "SEM_CLIPBOARD_MANAGER__MCONTEXT"

    const/16 v5, 0x17

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 364
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-gt v0, v6, :cond_1b

    move v0, v1

    :goto_17
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$24;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SEM_CLIPBOARD_MANAGER__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 373
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$25;

    const-string v4, "SEM_EMERGENCY_MANAGER__MCONTEXT"

    const/16 v5, 0x18

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 374
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-gt v0, v6, :cond_1c

    move v0, v1

    :goto_18
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$25;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SEM_EMERGENCY_MANAGER__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 381
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$26;

    const-string v4, "BUBBLE_POPUP_HELPER__SHELPER"

    const/16 v5, 0x19

    const-string v0, "LGE"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 382
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v9, :cond_1d

    move v0, v1

    :goto_19
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$26;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BUBBLE_POPUP_HELPER__SHELPER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 390
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$27;

    const-string v4, "LGCONTEXT__MCONTEXT"

    const/16 v5, 0x1a

    const-string v0, "LGE"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v9, :cond_1e

    move v0, v1

    :goto_1a
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$27;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LGCONTEXT__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 397
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$28;

    const-string v4, "AW_RESOURCE__SRESOURCES"

    const/16 v5, 0x1b

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_1f

    move v0, v1

    :goto_1b
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$28;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AW_RESOURCE__SRESOURCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 406
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$29;

    const-string v4, "MAPPER_CLIENT"

    const/16 v5, 0x1c

    const-string v0, "NVIDIA"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_20

    move v0, v1

    :goto_1c
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$29;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAPPER_CLIENT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 415
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$30;

    const-string v4, "TEXT_VIEW__MLAST_HOVERED_VIEW"

    const/16 v5, 0x1d

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_21

    move v0, v1

    :goto_1d
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$30;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_VIEW__MLAST_HOVERED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 424
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$31;

    const-string v4, "PERSONA_MANAGER"

    const/16 v5, 0x1e

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_22

    move v0, v1

    :goto_1e
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$31;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->PERSONA_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 433
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$32;

    const-string v4, "RESOURCES__MCONTEXT"

    const/16 v5, 0x1f

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_23

    move v0, v1

    :goto_1f
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$32;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->RESOURCES__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 443
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$33;

    const-string v4, "VIEW_CONFIGURATION__MCONTEXT"

    const/16 v5, 0x20

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_24

    move v0, v1

    :goto_20
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$33;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->VIEW_CONFIGURATION__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 454
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$34;

    const-string v4, "SYSTEM_SENSOR_MANAGER__MAPPCONTEXTIMPL"

    const/16 v5, 0x21

    const-string v0, "LENOVO"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v7, :cond_3

    :cond_2
    const-string v0, "vivo"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 455
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_25

    :cond_3
    move v0, v1

    :goto_21
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$34;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SYSTEM_SENSOR_MANAGER__MAPPCONTEXTIMPL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 464
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$35;

    const-string v4, "AUDIO_MANAGER__MCONTEXT_STATIC"

    const/16 v5, 0x22

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_26

    move v0, v1

    :goto_22
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$35;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER__MCONTEXT_STATIC:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 473
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$36;

    const-string v4, "ACTIVITY_MANAGER_MCONTEXT"

    const/16 v5, 0x23

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_27

    move v0, v1

    :goto_23
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$36;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_MANAGER_MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 485
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$37;

    const-string v3, "SOFT_REFERENCES"

    const/16 v4, 0x24

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$37;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 495
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$38;

    const-string v3, "FINALIZER_WATCHDOG_DAEMON"

    const/16 v4, 0x25

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$38;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 503
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$39;

    const-string v3, "MAIN"

    const/16 v4, 0x26

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$39;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 512
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$40;

    const-string v3, "LEAK_CANARY_THREAD"

    const/16 v4, 0x27

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$40;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 518
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$41;

    const-string v3, "EVENT_RECEIVER__MMESSAGE_QUEUE"

    const/16 v4, 0x28

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$41;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 56
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/squareup/leakcanary/AndroidExcludedRefs;

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CLIENT_RECORD__NEXT_IDLE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v0, v2

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPAN_CONTROLLER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SESSION_LEGACY_HELPER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_LINE__SCACHED:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BLOCKING_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__SERVED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__ROOT_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LAYOUT_TRANSITION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPELL_CHECKER_SESSION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CHOOSE_MODEL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEECH_RECOGNIZER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACCOUNT_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SCANNER_CONNECTION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->USER_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->APP_WIDGET_HOST_CALLBACKS:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EDITTEXT_BLINK_MESSAGEQUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->CONNECTIVITY_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INSTRUMENTATION_RECOMMEND_ACTIVITY:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v1, v0, v7

    const/16 v1, 0x14

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEN_GESTURE_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->GESTURE_BOOST_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v1, v0, v9

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->CLIPBOARD_UI_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v1, v0, v8

    const/16 v1, 0x17

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SEM_CLIPBOARD_MANAGER__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SEM_EMERGENCY_MANAGER__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BUBBLE_POPUP_HELPER__SHELPER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LGCONTEXT__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AW_RESOURCE__SRESOURCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAPPER_CLIENT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_VIEW__MLAST_HOVERED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->PERSONA_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->RESOURCES__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->VIEW_CONFIGURATION__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SYSTEM_SENSOR_MANAGER__MAPPCONTEXTIMPL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER__MCONTEXT_STATIC:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_MANAGER_MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->$VALUES:[Lcom/squareup/leakcanary/AndroidExcludedRefs;

    return-void

    :cond_4
    move v0, v2

    .line 61
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 70
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 91
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 106
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 122
    goto/16 :goto_4

    :cond_9
    move v0, v2

    .line 146
    goto/16 :goto_5

    :cond_a
    move v0, v2

    .line 161
    goto/16 :goto_6

    :cond_b
    move v0, v2

    .line 172
    goto/16 :goto_7

    :cond_c
    move v0, v2

    .line 182
    goto/16 :goto_8

    :cond_d
    move v0, v2

    .line 191
    goto/16 :goto_9

    :cond_e
    move v0, v2

    .line 204
    goto/16 :goto_a

    :cond_f
    move v0, v2

    .line 214
    goto/16 :goto_b

    :cond_10
    move v0, v2

    .line 229
    goto/16 :goto_c

    :cond_11
    move v0, v2

    .line 240
    goto/16 :goto_d

    :cond_12
    move v0, v2

    .line 254
    goto/16 :goto_e

    :cond_13
    move v0, v2

    .line 265
    goto/16 :goto_f

    :cond_14
    move v0, v2

    .line 279
    goto/16 :goto_10

    :cond_15
    move v0, v2

    .line 294
    goto/16 :goto_11

    :cond_16
    move v0, v2

    .line 314
    goto/16 :goto_12

    :cond_17
    move v0, v2

    .line 323
    goto/16 :goto_13

    :cond_18
    move v0, v2

    .line 335
    goto/16 :goto_14

    :cond_19
    move v0, v2

    .line 343
    goto/16 :goto_15

    :cond_1a
    move v0, v2

    .line 352
    goto/16 :goto_16

    :cond_1b
    move v0, v2

    .line 364
    goto/16 :goto_17

    :cond_1c
    move v0, v2

    .line 374
    goto/16 :goto_18

    :cond_1d
    move v0, v2

    .line 382
    goto/16 :goto_19

    :cond_1e
    move v0, v2

    .line 390
    goto/16 :goto_1a

    :cond_1f
    move v0, v2

    .line 397
    goto/16 :goto_1b

    :cond_20
    move v0, v2

    .line 406
    goto/16 :goto_1c

    :cond_21
    move v0, v2

    .line 416
    goto/16 :goto_1d

    :cond_22
    move v0, v2

    .line 424
    goto/16 :goto_1e

    :cond_23
    move v0, v2

    .line 433
    goto/16 :goto_1f

    :cond_24
    move v0, v2

    .line 443
    goto/16 :goto_20

    :cond_25
    move v0, v2

    .line 455
    goto/16 :goto_21

    :cond_26
    move v0, v2

    .line 464
    goto/16 :goto_22

    :cond_27
    move v0, v2

    .line 473
    goto/16 :goto_23
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZ)V

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/squareup/leakcanary/AndroidExcludedRefs$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/squareup/leakcanary/AndroidExcludedRefs$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "applies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 566
    iput-boolean p3, p0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->applies:Z

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/squareup/leakcanary/AndroidExcludedRefs$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/squareup/leakcanary/AndroidExcludedRefs$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static createAndroidDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 5

    .prologue
    .line 533
    sget-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    sget-object v4, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 534
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 533
    invoke-static {v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createBuilder(Ljava/util/EnumSet;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createAppDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1

    .prologue
    .line 545
    const-class v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createBuilder(Ljava/util/EnumSet;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createBuilder(Ljava/util/EnumSet;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/squareup/leakcanary/AndroidExcludedRefs;",
            ">;)",
            "Lcom/squareup/leakcanary/ExcludedRefs$Builder;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "refs":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/squareup/leakcanary/AndroidExcludedRefs;>;"
    invoke-static {}, Lcom/squareup/leakcanary/ExcludedRefs;->builder()Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    .line 550
    .local v0, "excluded":Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 551
    .local v1, "ref":Lcom/squareup/leakcanary/AndroidExcludedRefs;
    iget-boolean v2, v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->applies:Z

    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {v1, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V

    move-object v2, v0

    .line 553
    check-cast v2, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    invoke-virtual {v1}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->named(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    goto :goto_0

    .line 556
    .end local v1    # "ref":Lcom/squareup/leakcanary/AndroidExcludedRefs;
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/leakcanary/AndroidExcludedRefs;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    return-object v0
.end method

.method public static values()[Lcom/squareup/leakcanary/AndroidExcludedRefs;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->$VALUES:[Lcom/squareup/leakcanary/AndroidExcludedRefs;

    invoke-virtual {v0}, [Lcom/squareup/leakcanary/AndroidExcludedRefs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/leakcanary/AndroidExcludedRefs;

    return-object v0
.end method


# virtual methods
.method abstract add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
.end method
