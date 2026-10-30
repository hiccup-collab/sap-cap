sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/CoursesAPIList.gen",
	"project1/test/integration/pages/CoursesAPIObjectPage.gen"
], function (JourneyRunner, CoursesAPIListGenerated, CoursesAPIObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheCoursesAPIListGenerated: CoursesAPIListGenerated,
			onTheCoursesAPIObjectPageGenerated: CoursesAPIObjectPageGenerated
        },
        async: true
    });

    return runner;
});

