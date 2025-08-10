.class Lcom/crashlytics/android/core/NativeCrashWriter;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIGNAL:Lcom/crashlytics/android/core/internal/models/SignalData;

.field private static final EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

.field private static final EMPTY_CHILDREN:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

.field private static final EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

.field private static final EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

.field private static final EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

.field static final NDK_CRASH_TYPE:Ljava/lang/String; = "ndk-crash"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/crashlytics/android/core/internal/models/SignalData;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/crashlytics/android/core/internal/models/SignalData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->DEFAULT_SIGNAL:Lcom/crashlytics/android/core/internal/models/SignalData;

    .line 29
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CHILDREN:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 30
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    .line 31
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    .line 32
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    .line 34
    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    sput-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    return-void
.end method

.method static synthetic access$000()[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .locals 1

    .line 19
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CHILDREN:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    return-object v0
.end method

.method private static createBinaryImagesMessage([Lcom/crashlytics/android/core/internal/models/BinaryImageData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .locals 4
    .param p0, "binaryImages"    # [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 591
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    .line 593
    .local v0, "binaryImageMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 594
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;-><init>(Lcom/crashlytics/android/core/internal/models/BinaryImageData;)V

    aput-object v2, v0, v1

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static createCustomAttributesMessage([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .locals 4
    .param p0, "customAttributes"    # [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    .line 601
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    .line 604
    .local v0, "customAttributeMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 605
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;-><init>(Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)V

    aput-object v2, v0, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 607
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static createDeviceMessage(Lcom/crashlytics/android/core/internal/models/DeviceData;)Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .locals 12
    .param p0, "deviceData"    # Lcom/crashlytics/android/core/internal/models/DeviceData;

    .line 557
    if-nez p0, :cond_0

    .line 558
    new-instance v0, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;

    invoke-direct {v0}, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;-><init>()V

    return-object v0

    .line 560
    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;

    iget v1, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->batteryCapacity:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    iget v3, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->batteryVelocity:I

    iget-boolean v4, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->proximity:Z

    iget v5, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->orientation:I

    iget-wide v6, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->totalPhysicalMemory:J

    iget-wide v8, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->availablePhysicalMemory:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->totalInternalStorage:J

    iget-wide v10, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->availableInternalStorage:J

    sub-long/2addr v8, v10

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;-><init>(FIZIJJ)V

    return-object v0
.end method

.method private static createEventMessage(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;)Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;
    .locals 17
    .param p0, "crashEvent"    # Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .param p1, "logFileManager"    # Lcom/crashlytics/android/core/LogFileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/internal/models/SessionEventData;",
            "Lcom/crashlytics/android/core/LogFileManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/core/internal/models/SignalData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/core/internal/models/SignalData;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->DEFAULT_SIGNAL:Lcom/crashlytics/android/core/internal/models/SignalData;

    .line 503
    .local v1, "signal":Lcom/crashlytics/android/core/internal/models/SignalData;
    :goto_0
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;-><init>(Lcom/crashlytics/android/core/internal/models/SignalData;)V

    .line 505
    .local v2, "signalMessage":Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;
    iget-object v3, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->threads:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    invoke-static {v3}, Lcom/crashlytics/android/core/NativeCrashWriter;->createThreadsMessage([Lcom/crashlytics/android/core/internal/models/ThreadData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v3

    .line 506
    .local v3, "threadsMessage":Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    iget-object v4, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->binaryImages:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    invoke-static {v4}, Lcom/crashlytics/android/core/NativeCrashWriter;->createBinaryImagesMessage([Lcom/crashlytics/android/core/internal/models/BinaryImageData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v4

    .line 509
    .local v4, "binaryImagesMessage":Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    new-instance v5, Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;

    invoke-direct {v5, v2, v3, v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;-><init>(Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V

    .line 511
    .local v5, "executionMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;
    iget-object v6, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->customAttributes:[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-object/from16 v7, p2

    invoke-static {v6, v7}, Lcom/crashlytics/android/core/NativeCrashWriter;->mergeCustomAttributes([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Ljava/util/Map;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/core/NativeCrashWriter;->createCustomAttributesMessage([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v6

    .line 515
    .local v6, "customAttributesMessage":Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    new-instance v8, Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;

    invoke-direct {v8, v5, v6}, Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;-><init>(Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V

    .line 517
    .local v8, "applicationMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;
    iget-object v9, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->deviceData:Lcom/crashlytics/android/core/internal/models/DeviceData;

    invoke-static {v9}, Lcom/crashlytics/android/core/NativeCrashWriter;->createDeviceMessage(Lcom/crashlytics/android/core/internal/models/DeviceData;)Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    move-result-object v9

    .line 519
    .local v9, "deviceMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual/range {p1 .. p1}, Lcom/crashlytics/android/core/LogFileManager;->getByteStringForLog()Lcom/crashlytics/android/core/ByteString;

    move-result-object v10

    .line 521
    .local v10, "logByteString":Lcom/crashlytics/android/core/ByteString;
    if-nez v10, :cond_1

    .line 522
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v11

    const-string v12, "CrashlyticsCore"

    const-string v13, "No log data to include with this event."

    invoke-interface {v11, v12, v13}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/crashlytics/android/core/LogFileManager;->clearLog()V

    .line 528
    if-eqz v10, :cond_2

    new-instance v11, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;

    invoke-direct {v11, v10}, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;-><init>(Lcom/crashlytics/android/core/ByteString;)V

    goto :goto_1

    :cond_2
    new-instance v11, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;

    invoke-direct {v11}, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;-><init>()V

    .line 531
    .local v11, "logMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :goto_1
    new-instance v12, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;

    iget-wide v13, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->timestamp:J

    const/4 v15, 0x3

    new-array v15, v15, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const/16 v16, 0x1

    aput-object v9, v15, v16

    const/16 v16, 0x2

    aput-object v11, v15, v16

    const-string v0, "ndk-crash"

    invoke-direct {v12, v13, v14, v0, v15}, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;-><init>(JLjava/lang/String;[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v12
.end method

.method private static createFramesMessage([Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .locals 4
    .param p0, "frames"    # [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 582
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    .line 584
    .local v0, "frameMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;
    :goto_0
    const/4 v1, 0x0

    .local v1, "frameIdx":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 585
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;-><init>(Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    aput-object v2, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    .end local v1    # "frameIdx":I
    :cond_1
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static createThreadsMessage([Lcom/crashlytics/android/core/internal/models/ThreadData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .locals 5
    .param p0, "threads"    # [Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 571
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    .line 573
    .local v0, "threadMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;
    :goto_0
    const/4 v1, 0x0

    .local v1, "threadIdx":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 574
    aget-object v2, p0, v1

    .line 575
    .local v2, "threadData":Lcom/crashlytics/android/core/internal/models/ThreadData;
    new-instance v3, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    iget-object v4, v2, Lcom/crashlytics/android/core/internal/models/ThreadData;->frames:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    invoke-static {v4}, Lcom/crashlytics/android/core/NativeCrashWriter;->createFramesMessage([Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;-><init>(Lcom/crashlytics/android/core/internal/models/ThreadData;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V

    aput-object v3, v0, v1

    .line 573
    .end local v2    # "threadData":Lcom/crashlytics/android/core/internal/models/ThreadData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    .end local v1    # "threadIdx":I
    :cond_1
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static mergeCustomAttributes([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Ljava/util/Map;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .locals 7
    .param p0, "ndkAttributes"    # [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/crashlytics/android/core/internal/models/CustomAttributeData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/crashlytics/android/core/internal/models/CustomAttributeData;"
        }
    .end annotation

    .line 538
    .local p1, "javaAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 539
    .local v0, "sorted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 540
    move-object v1, p0

    .local v1, "arr$":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 541
    .local v4, "attr":Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    iget-object v5, v4, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;->key:Ljava/lang/String;

    iget-object v6, v4, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;->value:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v4    # "attr":Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    .end local v1    # "arr$":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 548
    .local v1, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, v1

    new-array v2, v2, [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    .line 549
    .local v2, "merged":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 550
    new-instance v4, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    aget-object v5, v1, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, v1, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 552
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static writeNativeCrash(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 1
    .param p0, "crashEventData"    # Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .param p1, "logFileManager"    # Lcom/crashlytics/android/core/LogFileManager;
    .param p3, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/internal/models/SessionEventData;",
            "Lcom/crashlytics/android/core/LogFileManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    .local p2, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/core/NativeCrashWriter;->createEventMessage(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;)Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;

    move-result-object v0

    .line 624
    .local v0, "crashEventMessage":Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;
    invoke-virtual {v0, p3}, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 625
    return-void
.end method
